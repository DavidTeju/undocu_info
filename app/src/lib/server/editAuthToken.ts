import { createHmac, timingSafeEqual } from 'node:crypto';
import { normalizeEmail } from './normalizeEmail';

const SIG_BYTES = 16;
const DEFAULT_EXPIRES_DAYS = 30;
const SECONDS_PER_DAY = 24 * 60 * 60;

interface ParsedToken {
	collegeId: number;
	email: string;
	exp: number;
	sig: string;
	// Raw JSON bytes (after base64url-decode) that the signature was computed over.
	// We keep these verbatim so HMAC verification matches the exact bytes the sender signed.
	payloadBytes: string;
}

function hmacBytes(payloadBytes: string, secret: string): Buffer {
	return createHmac('sha256', secret).update(payloadBytes).digest().subarray(0, SIG_BYTES);
}

function buildPayload(collegeId: number, email: string, expSeconds: number): string {
	// Insertion order is significant — verify recomputes against the exact bytes received,
	// but signers within this codebase always produce `{cid, email, exp}` in this order.
	return JSON.stringify({
		cid: collegeId,
		email: normalizeEmail(email),
		exp: expSeconds
	});
}

function base64urlEncode(value: string): string {
	return Buffer.from(value, 'utf8').toString('base64url');
}

function base64urlDecodeToString(value: string): string | null {
	if (!value) return null;
	try {
		return Buffer.from(value, 'base64url').toString('utf8');
	} catch {
		return null;
	}
}

export function signEditAuthToken(
	collegeId: number,
	email: string,
	expSeconds: number,
	secret: string
): string {
	const payloadBytes = buildPayload(collegeId, email, expSeconds);
	const sig = hmacBytes(payloadBytes, secret).toString('base64url');
	return `${base64urlEncode(payloadBytes)}.${sig}`;
}

export function verifyEditAuthToken(
	collegeId: number,
	email: string,
	expSeconds: number,
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

	const expectedBytes = hmacBytes(buildPayload(collegeId, email, expSeconds), secret);

	if (providedBytes.length !== expectedBytes.length) return false;
	return timingSafeEqual(providedBytes, expectedBytes);
}

function parsePayloadJson(value: string): Record<string, unknown> | null {
	try {
		const parsed: unknown = JSON.parse(value);
		return parsed && typeof parsed === 'object' ? (parsed as Record<string, unknown>) : null;
	} catch {
		return null;
	}
}

interface ValidPayload {
	cid: number;
	email: string;
	exp: number;
}

function validatePayload(obj: Record<string, unknown>): ValidPayload | null {
	const { cid, email, exp } = obj;
	const cidOk = typeof cid === 'number' && Number.isInteger(cid) && cid >= 1;
	const emailOk = typeof email === 'string' && email.length > 0;
	const expOk = typeof exp === 'number' && Number.isFinite(exp) && exp > 0;
	if (!cidOk || !emailOk || !expOk) return null;
	return { cid: cid as number, email: email as string, exp: exp as number };
}

function splitToken(token: string): { payloadPart: string; sig: string } | null {
	if (typeof token !== 'string' || !token) return null;
	const dotIdx = token.indexOf('.');
	if (dotIdx <= 0 || dotIdx === token.length - 1) return null;
	const sig = token.slice(dotIdx + 1);
	if (!sig) return null;
	return { payloadPart: token.slice(0, dotIdx), sig };
}

export function parseEditAuthToken(token: string): ParsedToken | null {
	const parts = splitToken(token);
	if (!parts) return null;

	const payloadBytes = base64urlDecodeToString(parts.payloadPart);
	if (payloadBytes === null) return null;

	const obj = parsePayloadJson(payloadBytes);
	if (!obj) return null;

	const valid = validatePayload(obj);
	if (!valid) return null;

	return {
		collegeId: valid.cid,
		email: valid.email,
		exp: valid.exp,
		sig: parts.sig,
		payloadBytes
	};
}

export function buildEditAuthUrl(
	baseUrl: string,
	path: string,
	collegeId: number,
	email: string,
	secret: string,
	expiresInDays: number = DEFAULT_EXPIRES_DAYS
): string {
	const trimmedBase = baseUrl.replace(/\/+$/, '');
	const cleanPath = path.startsWith('/') ? path : `/${path}`;
	const nowSeconds = Math.floor(Date.now() / 1000);
	const expSeconds = nowSeconds + expiresInDays * SECONDS_PER_DAY;
	const token = signEditAuthToken(collegeId, email, expSeconds, secret);
	return `${trimmedBase}${cleanPath}?t=${token}`;
}

export function consumeEditAuthToken(
	token: string,
	secret: string,
	nowSeconds: number = Math.floor(Date.now() / 1000)
): { collegeId: number; email: string } | null {
	const parsed = parseEditAuthToken(token);
	if (!parsed) return null;

	if (parsed.exp <= nowSeconds) return null;

	// Verify HMAC against the EXACT payload bytes received, not a re-stringified copy.
	let providedBytes: Buffer;
	try {
		providedBytes = Buffer.from(parsed.sig, 'base64url');
	} catch {
		return null;
	}

	const expectedBytes = hmacBytes(parsed.payloadBytes, secret);
	if (providedBytes.length !== expectedBytes.length) return null;
	if (!timingSafeEqual(providedBytes, expectedBytes)) return null;

	return { collegeId: parsed.collegeId, email: parsed.email };
}
