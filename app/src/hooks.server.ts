import { createServerClient } from '@supabase/ssr';
import { type Handle, redirect } from '@sveltejs/kit';
import { env } from '$env/dynamic/private';

// Check if the path needs Supabase auth
function needsSupabase(pathname: string): boolean {
	return pathname.startsWith('/admin') || pathname.match(/^\/college\/[^/]+\/edit/) !== null;
}

export const handle: Handle = async ({ event, resolve }) => {
	const SUPABASE_URL = env.SUPABASE_URL;
	const SUPABASE_ANON_KEY = env.SUPABASE_ANON_KEY;

	// Set up Supabase for admin and edit routes
	if (needsSupabase(event.url.pathname)) {
		if (!SUPABASE_URL || !SUPABASE_ANON_KEY) {
			throw new Error('SUPABASE_URL and SUPABASE_ANON_KEY must be set');
		}
		event.locals.supabase = createServerClient(SUPABASE_URL, SUPABASE_ANON_KEY, {
			cookies: {
				getAll: () => event.cookies.getAll(),
				setAll: (cookiesToSet) => {
					cookiesToSet.forEach(({ name, value, options }) => {
						event.cookies.set(name, value, { ...options, path: '/' });
					});
				}
			}
		});

		event.locals.safeGetSession = async () => {
			const {
				data: { session }
			} = await event.locals.supabase.auth.getSession();

			if (!session) {
				return { session: null, user: null };
			}

			const {
				data: { user },
				error
			} = await event.locals.supabase.auth.getUser();

			if (error) {
				return { session: null, user: null };
			}

			return { session, user };
		};

		// Protect admin routes (except login) - redirect to login
		if (event.url.pathname.startsWith('/admin') && !event.url.pathname.startsWith('/admin/login')) {
			const { session, user } = await event.locals.safeGetSession();

			if (!session) {
				throw redirect(303, '/admin/login');
			}

			// Check if user is an allowed admin
			const adminEmails = (env.ADMIN_EMAILS || '').split(',').map(e => e.trim().toLowerCase());
			if (!user?.email || !adminEmails.includes(user.email.toLowerCase())) {
				throw redirect(303, '/admin/login?error=unauthorized');
			}
		}
		// Edit routes don't redirect - auth is checked in the action
	}

	return resolve(event, {
		filterSerializedResponseHeaders(name) {
			return name === 'content-range' || name === 'x-supabase-api-version';
		}
	});
};
