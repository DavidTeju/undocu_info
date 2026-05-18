import { dev } from '$app/environment';
import { env } from '$env/dynamic/private';
import prisma from '$lib/prisma';
import { handleResendWebhookEvent } from '$lib/server/resendWebhook';
import { json, type RequestHandler } from '@sveltejs/kit';
import { Resend, type WebhookEventPayload } from 'resend';

function isMissingWebhookSecretAllowed() {
	return dev || process.env.NODE_ENV === 'test';
}

function normalizeEnvValue(value: string | undefined) {
	const trimmed = value?.trim();
	if (!trimmed) return undefined;

	if (
		(trimmed.startsWith('"') && trimmed.endsWith('"')) ||
		(trimmed.startsWith("'") && trimmed.endsWith("'"))
	) {
		return trimmed.slice(1, -1);
	}

	return trimmed;
}

function getSvixHeaders(request: Request) {
	const id = request.headers.get('svix-id');
	const timestamp = request.headers.get('svix-timestamp');
	const signature = request.headers.get('svix-signature');

	if (!id || !timestamp || !signature) {
		return null;
	}

	return { id, timestamp, signature };
}

function verifyWebhookPayload(request: Request, payload: string): WebhookEventPayload {
	const webhookSecret = normalizeEnvValue(env.RESEND_WEBHOOK_SECRET);

	if (!webhookSecret) {
		if (!isMissingWebhookSecretAllowed()) {
			throw new Error('RESEND_WEBHOOK_SECRET is not configured');
		}

		return JSON.parse(payload) as WebhookEventPayload;
	}

	const headers = getSvixHeaders(request);
	if (!headers) {
		throw new Error('Missing Svix signature headers');
	}

	const resend = new Resend(normalizeEnvValue(env.RESEND_API_KEY));
	return resend.webhooks.verify({
		webhookSecret,
		payload,
		headers
	});
}

export const POST: RequestHandler = async ({ request }) => {
	const payload = await request.text();
	let event: WebhookEventPayload;

	try {
		event = verifyWebhookPayload(request, payload);
	} catch (err) {
		const message = err instanceof Error ? err.message : 'Invalid Resend webhook payload';
		const status = message.includes('RESEND_WEBHOOK_SECRET') ? 500 : 400;
		return json({ ok: false, error: message }, { status });
	}

	const result = await handleResendWebhookEvent(event, prisma);
	return json({ ok: true, result });
};
