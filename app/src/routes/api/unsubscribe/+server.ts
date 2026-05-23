import { env } from '$env/dynamic/private';
import prisma from '$lib/prisma';
import { applyUserUnsubscribe } from '$lib/server/unsubscribe';
import { verifyUnsubscribeToken } from '$lib/server/unsubscribeToken';
import { error, type RequestHandler } from '@sveltejs/kit';

function getSecret(): string {
	const secret = env.UNSUBSCRIBE_HMAC_SECRET?.trim();
	if (!secret) {
		throw error(500, 'UNSUBSCRIBE_HMAC_SECRET is not configured');
	}
	return secret;
}

function parseParams(url: URL): { cid: number; email: string; sig: string } | null {
	const cidStr = url.searchParams.get('cid');
	const email = url.searchParams.get('email');
	const sig = url.searchParams.get('sig');
	if (!cidStr || !email || !sig) return null;
	const cid = Number(cidStr);
	if (!Number.isInteger(cid) || cid < 1) return null;
	return { cid, email, sig };
}

function escapeHtml(value: string): string {
	return value
		.replace(/&/g, '&amp;')
		.replace(/</g, '&lt;')
		.replace(/>/g, '&gt;')
		.replace(/"/g, '&quot;')
		.replace(/'/g, '&#39;');
}

function htmlPage(title: string, message: string, status: number): Response {
	const body = `<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<title>${escapeHtml(title)}</title>
	<style>
		body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; background: #fbf5f2; margin: 0; padding: 40px 20px; }
		main { max-width: 480px; margin: 0 auto; background: #fff; border-radius: 12px; padding: 32px; box-shadow: 0 2px 8px rgba(0,0,0,0.08); }
		h1 { margin: 0 0 12px; font-size: 22px; color: #272838; }
		p { margin: 0 0 12px; color: #333; line-height: 1.6; font-size: 15px; }
		a { color: #2563eb; }
	</style>
</head>
<body>
	<main>
		<h1>${escapeHtml(title)}</h1>
		<p>${escapeHtml(message)}</p>
		<p><a href="https://undocustudent.org">Return to UndocuStudent.org</a></p>
	</main>
</body>
</html>`;
	return new Response(body, {
		status,
		headers: { 'content-type': 'text/html; charset=utf-8' }
	});
}

async function handleUnsubscribe(
	url: URL
): Promise<{ ok: boolean; status: number; message: string }> {
	const parsed = parseParams(url);
	if (!parsed) {
		return { ok: false, status: 400, message: 'Missing or invalid unsubscribe link parameters.' };
	}

	const secret = getSecret();
	if (!verifyUnsubscribeToken(parsed.cid, parsed.email, parsed.sig, secret)) {
		return {
			ok: false,
			status: 400,
			message: 'This unsubscribe link is invalid or has been tampered with.'
		};
	}

	await applyUserUnsubscribe(prisma, parsed.cid, parsed.email);
	return {
		ok: true,
		status: 200,
		message: `${parsed.email} has been unsubscribed. You will not receive further outreach for this institution.`
	};
}

export const GET: RequestHandler = async ({ url }) => {
	const result = await handleUnsubscribe(url);
	return htmlPage(
		result.ok ? 'Unsubscribed' : 'Could not unsubscribe',
		result.message,
		result.status
	);
};

export const POST: RequestHandler = async ({ url }) => {
	// RFC 8058 one-click unsubscribe — mail clients hit this without user interaction.
	const result = await handleUnsubscribe(url);
	return new Response(result.ok ? 'OK' : result.message, {
		status: result.status,
		headers: { 'content-type': 'text/plain; charset=utf-8' }
	});
};
