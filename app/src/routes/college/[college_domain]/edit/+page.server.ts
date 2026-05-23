import type { Actions, PageServerLoad } from './$types';
import prisma from '$lib/prisma';
import { redirect, fail } from '@sveltejs/kit';
import { rateLimit } from '$lib/rateLimit';
import { env } from '$env/dynamic/private';
import { consumeEditAuthToken } from '$lib/server/editAuthToken';

const MAX_RESPONSE_LENGTH = 5000;

// Verify a signed-token-bearing string against the URL's college. Returns the
// attributed email if the token is valid AND its cid matches the resolved
// college; null otherwise. Caller never needs to look up the college separately.
async function attributeViaToken(
	tokenStr: string | null,
	collegeDomain: string
): Promise<string | null> {
	if (!tokenStr || !env.EDIT_AUTH_HMAC_SECRET) return null;
	const attribution = consumeEditAuthToken(tokenStr, env.EDIT_AUTH_HMAC_SECRET);
	if (!attribution) return null;
	const college = await prisma.colleges.findUnique({
		where: { domain: collegeDomain },
		select: { id: true }
	});
	if (!college || attribution.collegeId !== college.id) return null;
	return attribution.email;
}

export const load: PageServerLoad = async ({ params, locals, url }) => {
	let sessionEmail: string | null = null;
	if (locals.safeGetSession) {
		const { user } = await locals.safeGetSession();
		sessionEmail = user?.email ?? null;
	}

	const tokenParam = url.searchParams.get('t');
	const tokenEmail = await attributeViaToken(tokenParam, params.college_domain);

	// Supabase session wins when both are present (more specific identity).
	const userEmail = sessionEmail ?? tokenEmail;

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

	return { questionsCategorized, collegeName, userEmail, tokenParam };
};

export const actions = {
	sendOtp: async ({ request, locals, getClientAddress }) => {
		const formData = await request.formData();
		const email = formData.get('email') as string;

		if (!email) {
			return fail(400, { authError: 'Email is required' });
		}

		// Rate limit: 60s cooldown per email, 30s cooldown per IP
		const emailCheck = rateLimit(`otp:email:${email.toLowerCase()}`, 60_000);
		if (emailCheck.limited) {
			return fail(429, {
				authError: `Please wait ${emailCheck.retryAfter}s before requesting another code`
			});
		}
		const ipCheck = rateLimit(`otp:ip:${getClientAddress()}`, 30_000);
		if (ipCheck.limited) {
			return fail(429, {
				authError: `Too many requests. Please wait ${ipCheck.retryAfter}s`
			});
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

	submit: async ({ params, request, locals, url }) => {
		let submitterEmail: string | null = null;
		if (locals.safeGetSession) {
			const { user } = await locals.safeGetSession();
			submitterEmail = user?.email ?? null;
		}

		const formData = await request.formData();

		if (!submitterEmail) {
			const urlToken = url.searchParams.get('t');
			const formTokenRaw = formData.get('t');
			const formToken = typeof formTokenRaw === 'string' && formTokenRaw ? formTokenRaw : null;
			submitterEmail = await attributeViaToken(urlToken ?? formToken, params.college_domain);
		}

		if (!submitterEmail) {
			return fail(401, {
				success: false,
				reason: 'You must verify your email before submitting suggestions'
			});
		}

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
				submitter_email: submitterEmail,
				remarks
			}
		});

		redirect(303, '/thanks');
	}
} satisfies Actions;
