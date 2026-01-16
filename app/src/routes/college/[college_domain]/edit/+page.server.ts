import type { Actions, PageServerLoad } from './$types';
import prisma from '$lib/prisma';
import { redirect, fail } from '@sveltejs/kit';

const MAX_RESPONSE_LENGTH = 5000;

export const load: PageServerLoad = async ({ params, locals }) => {
	// Check if user is already authenticated
	let userEmail: string | null = null;
	if (locals.safeGetSession) {
		const { user } = await locals.safeGetSession();
		userEmail = user?.email ?? null;
	}

	const questions = await prisma.questions
		.findMany({
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
		})
		.then((questions) =>
			questions.map((q) => ({
				id: q.id,
				category: q.category,
				question: q.question,
				response: q.responses[0]?.response || null
			}))
		);

	const collegeName = await prisma.colleges
		.findUnique({
			where: { domain: params.college_domain },
			select: { name: true }
		})
		.then((college) => college?.name || null);

	const questionsCategorized = Object.groupBy(questions, (q) => q.category);

	return { questionsCategorized, collegeName, userEmail };
};

export const actions = {
	sendOtp: async ({ request, locals }) => {
		const formData = await request.formData();
		const email = formData.get('email') as string;

		if (!email) {
			return fail(400, { authError: 'Email is required' });
		}

		const { error } = await locals.supabase.auth.signInWithOtp({
			email,
			options: { shouldCreateUser: true }
		});

		if (error) {
			return fail(400, { authError: error.message });
		}

		return { otpSent: true, email };
	},

	verifyOtp: async ({ request, locals }) => {
		const formData = await request.formData();
		const email = formData.get('email') as string;
		const otp = formData.get('otp') as string;

		if (!email || !otp) {
			return fail(400, { authError: 'Email and code are required' });
		}

		const { data, error } = await locals.supabase.auth.verifyOtp({
			email,
			token: otp,
			type: 'email'
		});

		if (error) {
			return fail(400, { authError: error.message, otpSent: true, email });
		}

		return { verified: true, verifiedEmail: data.user?.email };
	},

	submit: async ({ params, request, locals }) => {
		// Verify authentication
		if (!locals.safeGetSession) {
			return fail(401, {
				success: false,
				reason: 'You must verify your email before submitting suggestions'
			});
		}
		const { user } = await locals.safeGetSession();
		if (!user?.email) {
			return fail(401, {
				success: false,
				reason: 'You must verify your email before submitting suggestions'
			});
		}

		const formData = await request.formData();
		const remarks = (formData.get('remarks') as string)?.trim() || null;

		const questionsWithOldResponses = await prisma.questions.findMany({
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
			.map((q) => {
				const rawResponse = formData.get(q.id.toString());
				const response = typeof rawResponse === 'string' ? rawResponse.trim() : null;
				return {
					id: q.id,
					question: q.question,
					oldResponse: q.responses[0]?.response || null,
					response
				};
			})
			.filter(({ response, oldResponse }) => (response || '') !== (oldResponse || ''));

		// Validate response lengths
		const tooLong = questionswithSuggestions.find(
			(q) => q.response && q.response.length > MAX_RESPONSE_LENGTH
		);
		if (tooLong) {
			return fail(400, {
				success: false,
				reason: `Response too long (max ${MAX_RESPONSE_LENGTH} characters)`
			});
		}

		const suggestions = questionswithSuggestions.map(({ id, question, response }) => ({
			id,
			question,
			response
		}));

		if (suggestions.length === 0 && !remarks) {
			return fail(400, { success: false, reason: 'No changes or notes detected' });
		}

		const suggestionsAsObject = Object.fromEntries(questionswithSuggestions.map((q) => [q.id, q]));

		await prisma.suggestions.create({
			data: {
				content: suggestionsAsObject,
				college_domain: params.college_domain,
				submitter_email: user.email,
				remarks
			}
		});

		redirect(303, '/thanks');
	}
} satisfies Actions;
