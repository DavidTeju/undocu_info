import type { PageServerLoad } from './$types';
import prisma from '$lib/prisma';
import { error } from '@sveltejs/kit';
import type { question_category } from '@prisma/client';
import {
	PERMANENT_FAILURE_STATUSES,
	TIER_1_STATUSES,
	TIER_2_STATUSES
} from '$lib/server/eligibility';

const DROP_STATUSES = ['invalid', 'disabled', 'disposable', 'spamtrap'] as const;
const HIDDEN_EMAIL_STATUSES = [...DROP_STATUSES, ...PERMANENT_FAILURE_STATUSES];

const TIER_ORDER: Record<string, number> = {
	...Object.fromEntries(TIER_1_STATUSES.map((s) => [s, 0])),
	...Object.fromEntries(TIER_2_STATUSES.map((s) => [s, 1]))
};

function rankEmail(status: string | null, score: number | null): [number, number] {
	const tier = TIER_ORDER[status ?? ''] ?? 2;
	return [tier, -(score ?? -1)];
}

const getResponsesForCollege_Categorized = async (college_domain: string) => {
	const college = await prisma.colleges.findUnique({
		where: {
			domain: college_domain
		},
		include: {
			responses: {
				include: {
					questions: true
				}
			},
			emailaddresses: {
				where: {
					OR: [
						{ verification_status: null },
						{ verification_status: { notIn: HIDDEN_EMAIL_STATUSES } }
					]
				},
				select: {
					emailaddress: true,
					verification_status: true,
					verification_score: true
				}
			}
		}
	});

	if (!college) {
		error(404, 'College not found');
	}

	const suppressed = new Set(
		(
			await prisma.email_outreach_suppression.findMany({
				where: { college_id: college.id },
				select: { email_address: true }
			})
		).map((r) => r.email_address)
	);

	const emails = college.emailaddresses
		.filter((e) => !suppressed.has(e.emailaddress))
		.sort((a, b) => {
			const [ta, sa] = rankEmail(a.verification_status, a.verification_score);
			const [tb, sb] = rankEmail(b.verification_status, b.verification_score);
			if (ta !== tb) return ta - tb;
			if (sa !== sb) return sa - sb;
			return a.emailaddress.localeCompare(b.emailaddress);
		})
		.map((e) => e.emailaddress);

	return {
		...college,
		emails,
		responses: college.responses.reduce(
			(acc, response) => {
				const category = response.questions.category as question_category;
				acc[category] = acc[category] || [];
				acc[category].push(response);
				return acc;
			},
			{} as Record<question_category, Array<(typeof college.responses)[0]>>
		)
	};
};

export const load: PageServerLoad = async ({ params }) => {
	const collegeCategorized = await getResponsesForCollege_Categorized(params.college_domain);

	return { college: collegeCategorized, domain: params.college_domain };
};
