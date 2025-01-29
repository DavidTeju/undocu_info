import type { PageServerLoad } from './$types';
import prisma from '$lib/prisma';

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

	const questionsCategorized = Object.groupBy(questions, q => q.category);

	return { questionsCategorized };
};