import type { Actions, PageServerLoad } from './$types';
import prisma from '$lib/prisma';
import { redirect } from '@sveltejs/kit';

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
			.map(q => ({
				id: q.id,
				question: q.question,
				oldResponse: q.responses[0]?.response || null,
				response: formData.get(q.id.toString()) || null
			}))
			.filter(({ response, oldResponse }) => response !== null && response !== oldResponse)
			.map(
				({ id, question, response }) => ({ id, question, response })
			);

		console.log(questionsWithOldResponses.map(q => ({
			id: q.id,
			question: q.question,
			oldResponse: q.responses[0]?.response || null,
			response: formData.get(q.id.toString()) || null
		})));
		if (questionswithSuggestions.length === 0) {
			return { success: false, reason: 'No changes detected' };
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
