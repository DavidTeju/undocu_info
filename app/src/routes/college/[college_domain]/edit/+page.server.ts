import type { PageServerLoad } from './$types';
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
		const data = await request.formData();

		const suggestionsAsArray = await prisma.questions.findMany(
			{
				select: {
					id: true,
					question: true
				}
			}).then(questions =>
			questions.map(q => ({
				id: q.id,
				question: q.question,
				response: data.get(q.id.toString())
			})).filter(q => q.response !== null));

		const suggestionsAsObject = Object.fromEntries(suggestionsAsArray.map(q => [q.id, q]));

		await prisma.suggestions.create({
			data: {
				content: JSON.stringify(suggestionsAsObject),
				college_domain: params.college_domain
			}
		});

		redirect(303, "/thanks");

	}
};