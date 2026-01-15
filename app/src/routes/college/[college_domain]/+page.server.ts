import type { PageServerLoad } from './$types';
import prisma from '$lib/prisma';
import { error } from '@sveltejs/kit';
import type { question_category } from '@prisma/client';

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
			}
		}
	});

	if (!college) {
		error(404, 'College not found');
	}

	return {
		...college,
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
