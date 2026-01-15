import type { Actions, PageServerLoad } from './$types';
import prisma from '$lib/prisma';
import { redirect, fail } from '@sveltejs/kit';

const MAX_RESPONSE_LENGTH = 5000;

export const load: PageServerLoad = async ({ params }) => {
	const questions = await prisma.questions.findMany({
		select: {
			id: true,
			category: true,
			question: true,
			responses: {
				where: {
					colleges: {
						domain: params.college_domain
					}
				},
				select: {
					response: true
				}
			}
		}
	}).then(questions =>
		questions.map(q => ({
			id: q.id,
			category: q.category,
			question: q.question,
			response: q.responses[0]?.response || null
		}))
	);

	const collegeName = await prisma.colleges.findUnique({
		where: { domain: params.college_domain },
		select: { name: true }
	}).then(college => college?.name || null);

	const questionsCategorized = Object.groupBy(questions, q => q.category);


	return { questionsCategorized, collegeName };
};

export const actions = {
	default: async ({ params, request }) => {
		const formData = await request.formData();

		const questionsWithOldResponses = await prisma.questions.findMany(
			{
				select: {
					id: true,
					question: true,
					responses: {
						where: {
							colleges: {
								domain: params.college_domain
							}
						},
						select: {
							response: true
						}
					}
				}
			});

		const questionswithSuggestions = questionsWithOldResponses
			.map(q => {
				const rawResponse = formData.get(q.id.toString());
				const response = typeof rawResponse === 'string' ? rawResponse.trim() : null;
				return {
					id: q.id,
					question: q.question,
					oldResponse: q.responses[0]?.response || null,
					response
				};
			})
			.filter(({ response, oldResponse }) => response !== null && response !== oldResponse);

		// Validate response lengths
		const tooLong = questionswithSuggestions.find(q => q.response && q.response.length > MAX_RESPONSE_LENGTH);
		if (tooLong) {
			return fail(400, { success: false, reason: `Response too long (max ${MAX_RESPONSE_LENGTH} characters)` });
		}

		const suggestions = questionswithSuggestions.map(
			({ id, question, response }) => ({ id, question, response })
		);

		if (suggestions.length === 0) {
			return fail(400, { success: false, reason: 'No changes detected' });
		}

		const suggestionsAsObject = Object.fromEntries(questionswithSuggestions.map(q => [q.id, q]));

		await prisma.suggestions.create({
			data: {
				content: JSON.stringify(suggestionsAsObject),
				college_domain: params.college_domain
			}
		});

		redirect(303, '/thanks');
	}
} satisfies Actions;
