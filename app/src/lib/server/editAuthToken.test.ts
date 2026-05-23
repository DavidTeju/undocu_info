import { describe, expect, it } from 'vitest';
import {
	buildEditAuthUrl,
	consumeEditAuthToken,
	parseEditAuthToken,
	signEditAuthToken,
	verifyEditAuthToken
} from './editAuthToken';

const SECRET = 'test-secret-for-edit-auth-tokens';
const FAR_FUTURE = 4_000_000_000; // year 2096

describe('signEditAuthToken', () => {
	it('produces a deterministic token for the same inputs', () => {
		const a = signEditAuthToken(42, 'admissions@stanford.edu', FAR_FUTURE, SECRET);
		const b = signEditAuthToken(42, 'admissions@stanford.edu', FAR_FUTURE, SECRET);
		expect(a).toBe(b);
	});

	it('normalizes email casing and whitespace so the token is stable', () => {
		const a = signEditAuthToken(42, 'admissions@stanford.edu', FAR_FUTURE, SECRET);
		const b = signEditAuthToken(42, '  Admissions@Stanford.EDU  ', FAR_FUTURE, SECRET);
		expect(a).toBe(b);
	});

	it('produces different tokens for different college ids', () => {
		const a = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		const b = signEditAuthToken(43, 'foo@bar.com', FAR_FUTURE, SECRET);
		expect(a).not.toBe(b);
	});

	it('produces different tokens for different emails', () => {
		const a = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		const b = signEditAuthToken(42, 'baz@bar.com', FAR_FUTURE, SECRET);
		expect(a).not.toBe(b);
	});

	it('produces different tokens for different secrets', () => {
		const a = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		const b = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, 'other-secret');
		expect(a).not.toBe(b);
	});

	it('produces a token with the payload.sig shape', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		expect(token).toMatch(/^[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+$/);
	});
});

describe('verifyEditAuthToken', () => {
	it('returns true for the matching payload + sig', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		const sig = token.split('.')[1];
		expect(verifyEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, sig, SECRET)).toBe(true);
	});

	it('returns false when cid is tampered', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		const sig = token.split('.')[1];
		expect(verifyEditAuthToken(43, 'foo@bar.com', FAR_FUTURE, sig, SECRET)).toBe(false);
	});

	it('returns false when email is tampered', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		const sig = token.split('.')[1];
		expect(verifyEditAuthToken(42, 'evil@bar.com', FAR_FUTURE, sig, SECRET)).toBe(false);
	});

	it('returns false when exp is tampered', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		const sig = token.split('.')[1];
		expect(verifyEditAuthToken(42, 'foo@bar.com', FAR_FUTURE + 1, sig, SECRET)).toBe(false);
	});

	it('returns false for an empty signature', () => {
		expect(verifyEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, '', SECRET)).toBe(false);
	});

	it('returns false for a garbage signature', () => {
		expect(verifyEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, 'not-a-real-sig', SECRET)).toBe(
			false
		);
	});
});

describe('parseEditAuthToken', () => {
	it('returns null for empty string', () => {
		expect(parseEditAuthToken('')).toBeNull();
	});

	it('returns null when missing dot separator', () => {
		expect(parseEditAuthToken('nodothere')).toBeNull();
	});

	it('returns null when payload base64 is invalid JSON', () => {
		const badPayload = Buffer.from('not json at all', 'utf8').toString('base64url');
		expect(parseEditAuthToken(`${badPayload}.abc`)).toBeNull();
	});

	it('returns null when sig is empty', () => {
		const payload = Buffer.from(JSON.stringify({ cid: 1, email: 'a@b', exp: 1 }), 'utf8').toString(
			'base64url'
		);
		expect(parseEditAuthToken(`${payload}.`)).toBeNull();
	});

	it('returns null when payload is missing fields', () => {
		const payload = Buffer.from(JSON.stringify({ cid: 1, email: 'a@b' }), 'utf8').toString(
			'base64url'
		);
		expect(parseEditAuthToken(`${payload}.sig`)).toBeNull();
	});

	it('returns null when cid is not a positive integer', () => {
		const payload = Buffer.from(
			JSON.stringify({ cid: 'forty-two', email: 'a@b', exp: 1 }),
			'utf8'
		).toString('base64url');
		expect(parseEditAuthToken(`${payload}.sig`)).toBeNull();
	});

	it('returns null when email is not a string', () => {
		const payload = Buffer.from(JSON.stringify({ cid: 1, email: 42, exp: 1 }), 'utf8').toString(
			'base64url'
		);
		expect(parseEditAuthToken(`${payload}.sig`)).toBeNull();
	});

	it('returns null when exp is not a number', () => {
		const payload = Buffer.from(
			JSON.stringify({ cid: 1, email: 'a@b', exp: 'soon' }),
			'utf8'
		).toString('base64url');
		expect(parseEditAuthToken(`${payload}.sig`)).toBeNull();
	});

	it('returns the parsed payload, sig, and raw payload bytes on success', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		const parsed = parseEditAuthToken(token);
		expect(parsed).not.toBeNull();
		expect(parsed!.collegeId).toBe(42);
		expect(parsed!.email).toBe('foo@bar.com');
		expect(parsed!.exp).toBe(FAR_FUTURE);
		expect(parsed!.sig).toBe(token.split('.')[1]);
		expect(parsed!.payloadBytes).toBe(
			JSON.stringify({ cid: 42, email: 'foo@bar.com', exp: FAR_FUTURE })
		);
	});
});

describe('consumeEditAuthToken', () => {
	it('returns the verified attribution for a valid unexpired token', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		const result = consumeEditAuthToken(token, SECRET, FAR_FUTURE - 1);
		expect(result).toEqual({ collegeId: 42, email: 'foo@bar.com' });
	});

	it('returns null when the token is expired', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', 100, SECRET);
		expect(consumeEditAuthToken(token, SECRET, 200)).toBeNull();
	});

	it('returns null when exp equals now (boundary — exp must be strictly future)', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', 500, SECRET);
		expect(consumeEditAuthToken(token, SECRET, 500)).toBeNull();
	});

	it('returns null when the signature is tampered', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		const [payload, sig] = token.split('.');
		// Flip one byte in the signature
		const sigBytes = Buffer.from(sig, 'base64url');
		sigBytes[0] = sigBytes[0] ^ 0xff;
		const tamperedSig = sigBytes.toString('base64url');
		const tampered = `${payload}.${tamperedSig}`;
		expect(consumeEditAuthToken(tampered, SECRET, FAR_FUTURE - 1)).toBeNull();
	});

	it('returns null when the payload is tampered (signature no longer matches)', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		const [, sig] = token.split('.');
		// Forge a payload with a different cid
		const evilPayload = Buffer.from(
			JSON.stringify({ cid: 999, email: 'foo@bar.com', exp: FAR_FUTURE }),
			'utf8'
		).toString('base64url');
		expect(consumeEditAuthToken(`${evilPayload}.${sig}`, SECRET, FAR_FUTURE - 1)).toBeNull();
	});

	it('returns null with the wrong secret', () => {
		const token = signEditAuthToken(42, 'foo@bar.com', FAR_FUTURE, SECRET);
		expect(consumeEditAuthToken(token, 'other-secret', FAR_FUTURE - 1)).toBeNull();
	});

	it('returns null for a malformed token', () => {
		expect(consumeEditAuthToken('garbage', SECRET)).toBeNull();
	});
});

describe('buildEditAuthUrl', () => {
	it('round-trips through parseEditAuthToken + consumeEditAuthToken', () => {
		const url = buildEditAuthUrl(
			'https://undocustudent.org',
			'/college/stanford/edit',
			42,
			'admissions@stanford.edu',
			SECRET
		);
		const parsed = new URL(url);
		expect(parsed.origin + parsed.pathname).toBe('https://undocustudent.org/college/stanford/edit');
		const tokenParam = parsed.searchParams.get('t');
		expect(tokenParam).not.toBeNull();
		const result = consumeEditAuthToken(tokenParam!, SECRET);
		expect(result).toEqual({ collegeId: 42, email: 'admissions@stanford.edu' });
	});

	it('strips a trailing slash from baseUrl', () => {
		const url = buildEditAuthUrl(
			'https://undocustudent.org/',
			'/college/stanford/edit',
			42,
			'foo@bar.com',
			SECRET
		);
		expect(new URL(url).pathname).toBe('/college/stanford/edit');
	});

	it('adds a leading slash to path when missing', () => {
		const url = buildEditAuthUrl(
			'https://undocustudent.org',
			'college/stanford/edit',
			42,
			'foo@bar.com',
			SECRET
		);
		expect(new URL(url).pathname).toBe('/college/stanford/edit');
	});

	it('defaults to a 30-day expiry', () => {
		const before = Math.floor(Date.now() / 1000);
		const url = buildEditAuthUrl(
			'https://undocustudent.org',
			'/college/stanford/edit',
			42,
			'foo@bar.com',
			SECRET
		);
		const after = Math.floor(Date.now() / 1000);
		const tokenParam = new URL(url).searchParams.get('t')!;
		const parsed = parseEditAuthToken(tokenParam)!;
		const thirtyDays = 30 * 24 * 60 * 60;
		expect(parsed.exp).toBeGreaterThanOrEqual(before + thirtyDays);
		expect(parsed.exp).toBeLessThanOrEqual(after + thirtyDays);
	});

	it('respects a custom expiresInDays argument', () => {
		const before = Math.floor(Date.now() / 1000);
		const url = buildEditAuthUrl(
			'https://undocustudent.org',
			'/college/stanford/edit',
			42,
			'foo@bar.com',
			SECRET,
			7
		);
		const after = Math.floor(Date.now() / 1000);
		const tokenParam = new URL(url).searchParams.get('t')!;
		const parsed = parseEditAuthToken(tokenParam)!;
		const sevenDays = 7 * 24 * 60 * 60;
		expect(parsed.exp).toBeGreaterThanOrEqual(before + sevenDays);
		expect(parsed.exp).toBeLessThanOrEqual(after + sevenDays);
	});
});
