import type { Actions, PageServerLoad } from './$types';
import { fail, redirect } from '@sveltejs/kit';
import { env } from '$env/dynamic/private';

export const load: PageServerLoad = async ({ locals, url }) => {
	const { session, user } = await locals.safeGetSession();

	// Check if redirected here due to unauthorized access
	const unauthorized = url.searchParams.get('error') === 'unauthorized';

	if (session && user?.email) {
		const adminEmails = (env.ADMIN_EMAILS || '').split(',').map(e => e.trim().toLowerCase());
		const isAdmin = adminEmails.includes(user.email.toLowerCase());

		if (isAdmin) {
			// Admin user, redirect to reviews
			throw redirect(303, '/admin/reviews');
		} else {
			// Non-admin user - show error with their email
			return {
				unauthorized: true,
				userEmail: user.email
			};
		}
	}

	if (unauthorized) {
		return { unauthorized: true };
	}

	return {};
};

export const actions = {
	login: async ({ request, locals }) => {
		const formData = await request.formData();
		const email = formData.get('email') as string;
		const password = formData.get('password') as string;

		if (!email || !password) {
			return fail(400, { error: 'Email and password are required', email });
		}

		const { error } = await locals.supabase.auth.signInWithPassword({
			email,
			password
		});

		if (error) {
			return fail(400, { error: error.message, email });
		}

		throw redirect(303, '/admin/reviews');
	},

	signOut: async ({ locals }) => {
		await locals.supabase.auth.signOut();
		return { signedOut: true };
	}
} satisfies Actions;
