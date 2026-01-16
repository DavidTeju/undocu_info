import type { Actions } from './$types';
import { redirect } from '@sveltejs/kit';

export const actions = {
	default: async ({ locals }) => {
		await locals.supabase.auth.signOut();
		throw redirect(303, '/admin/login');
	}
} satisfies Actions;
