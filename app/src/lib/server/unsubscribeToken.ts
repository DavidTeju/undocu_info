import { createHmac, timingSafeEqual } from 'node:crypto';
import { normalizeEmail } from './normalizeEmail';

const SIG_BYTES = 16;

function payload(collegeId: number, email: string): string {
	return `${collegeId}:${normalizeEmail(email)}`;
}

export function signUnsubscribeToken(collegeId: number, email: string, secret: string): string {
	return createHmac('sha256', secret)
		.update(payload(collegeId, email))
		.digest()
		.subarray(0, SIG_BYTES)
		.toString('base64url');
}

export function verifyUnsubscribeToken(
	collegeId: number,
	email: string,
	sig: string,
	secret: string
): boolean {
	if (!sig) return false;

	let providedBytes: Buffer;
	try {
		providedBytes = Buffer.from(sig, 'base64url');
	} catch {
		return false;
	}

	const expectedBytes = createHmac('sha256', secret)
		.update(payload(collegeId, email))
		.digest()
		.subarray(0, SIG_BYTES);

	if (providedBytes.length !== expectedBytes.length) return false;
	return timingSafeEqual(providedBytes, expectedBytes);
}

export function buildUnsubscribeUrl(
	baseUrl: string,
	collegeId: number,
	email: string,
	secret: string
): string {
	const trimmedBase = baseUrl.replace(/\/+$/, '');
	const sig = signUnsubscribeToken(collegeId, email, secret);
	const params = new URLSearchParams({
		cid: String(collegeId),
		email: normalizeEmail(email),
		sig
	});
	return `${trimmedBase}/api/unsubscribe?${params.toString()}`;
}
