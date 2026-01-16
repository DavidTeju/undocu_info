import type { Actions, PageServerLoad } from './$types';
import prisma from '$lib/prisma';
import { fail } from '@sveltejs/kit';

export const load: PageServerLoad = async () => {
	const suggestions = await prisma.suggestions.findMany({
		where: {
			status: 'pending'
		},
		include: {
			colleges: {
				select: {
					name: true
				}
			}
		},
		orderBy: {
			created_at: 'asc'
		}
	});

	// Transform BigInt to string for JSON serialization
	return {
		suggestions: suggestions.map((s) => ({
			id: s.id.toString(),
			created_at: s.created_at,
			content: s.content as Record<
				string,
				{ id: number; question: string; oldResponse: string | null; response: string }
			>,
			college_domain: s.college_domain,
			college_name: s.colleges.name,
			status: s.status,
			submitter_email: s.submitter_email,
			remarks: s.remarks
		}))
	};
};

export const actions = {
	approve: async ({ request }) => {
		const formData = await request.formData();
		const suggestionId = formData.get('suggestionId');

		if (!suggestionId || typeof suggestionId !== 'string') {
			return fail(400, { error: 'Missing suggestion ID' });
		}

		const suggestion = await prisma.suggestions.findUnique({
			where: { id: BigInt(suggestionId) },
			include: { colleges: true }
		});

		if (!suggestion) {
			return fail(404, { error: 'Suggestion not found' });
		}

		const content = suggestion.content as Record<
			string,
			{ id: number; question: string; oldResponse: string | null; response: string }
		>;

		// Apply each change to the responses table
		for (const [questionId, change] of Object.entries(content)) {
			const existingResponse = await prisma.responses.findFirst({
				where: {
					questionid: parseInt(questionId),
					collegeid: suggestion.colleges.id
				}
			});

			if (existingResponse && !change.response) {
				// Delete existing response
				await prisma.responses.delete({
					where: { id: existingResponse.id }
				});
			} else if (existingResponse) {
				// Update existing response
				await prisma.responses.update({
					where: { id: existingResponse.id },
					data: { response: change.response }
				});
			} else if (change.response) {
				// Create new response
				await prisma.responses.create({
					data: {
						questionid: parseInt(questionId),
						collegeid: suggestion.colleges.id,
						response: change.response
					}
				});
			}
		}

		// Mark suggestion as approved
		await prisma.suggestions.update({
			where: { id: BigInt(suggestionId) },
			data: {
				status: 'approved',
				reviewed_at: new Date()
			}
		});

		return { success: true, action: 'approved' };
	},

	reject: async ({ request }) => {
		const formData = await request.formData();
		const suggestionId = formData.get('suggestionId');

		if (!suggestionId || typeof suggestionId !== 'string') {
			return fail(400, { error: 'Missing suggestion ID' });
		}

		await prisma.suggestions.update({
			where: { id: BigInt(suggestionId) },
			data: {
				status: 'rejected',
				reviewed_at: new Date()
			}
		});

		return { success: true, action: 'rejected' };
	}
} satisfies Actions;
