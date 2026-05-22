import { describe, expect, it } from 'vitest';
import {
	buildUnsubscribeUrl,
	signUnsubscribeToken,
	verifyUnsubscribeToken
} from './unsubscribeToken';

const SECRET = 'test-secret-for-unsubscribe-tokens';

describe('signUnsubscribeToken', () => {
	it('produces a deterministic, URL-safe token for the same (cid, email, secret)', () => {
		const a = signUnsubscribeToken(42, 'admissions@stanford.edu', SECRET);
		const b = signUnsubscribeToken(42, 'admissions@stanford.edu', SECRET);
		expect(a).toBe(b);
		expect(a).toMatch(/^[A-Za-z0-9_-]+$/);
	});

	it('normalizes email casing and whitespace so the token is stable', () => {
		const a = signUnsubscribeToken(42, 'admissions@stanford.edu', SECRET);
		const b = signUnsubscribeToken(42, '  Admissions@Stanford.EDU  ', SECRET);
		expect(a).toBe(b);
	});

	it('produces different tokens for different college ids', () => {
		const a = signUnsubscribeToken(42, 'foo@bar.com', SECRET);
		const b = signUnsubscribeToken(43, 'foo@bar.com', SECRET);
		expect(a).not.toBe(b);
	});

	it('produces different tokens for different emails', () => {
		const a = signUnsubscribeToken(42, 'foo@bar.com', SECRET);
		const b = signUnsubscribeToken(42, 'baz@bar.com', SECRET);
		expect(a).not.toBe(b);
	});

	it('produces different tokens for different secrets', () => {
		const a = signUnsubscribeToken(42, 'foo@bar.com', SECRET);
		const b = signUnsubscribeToken(42, 'foo@bar.com', 'other-secret');
		expect(a).not.toBe(b);
	});
});

describe('verifyUnsubscribeToken', () => {
	it('returns true for a valid signature', () => {
		const sig = signUnsubscribeToken(42, 'foo@bar.com', SECRET);
		expect(verifyUnsubscribeToken(42, 'foo@bar.com', sig, SECRET)).toBe(true);
	});

	it('returns false if cid is tampered', () => {
		const sig = signUnsubscribeToken(42, 'foo@bar.com', SECRET);
		expect(verifyUnsubscribeToken(43, 'foo@bar.com', sig, SECRET)).toBe(false);
	});

	it('returns false if email is tampered', () => {
		const sig = signUnsubscribeToken(42, 'foo@bar.com', SECRET);
		expect(verifyUnsubscribeToken(42, 'evil@bar.com', sig, SECRET)).toBe(false);
	});

	it('returns false for a garbage signature', () => {
		expect(verifyUnsubscribeToken(42, 'foo@bar.com', 'not-a-real-sig', SECRET)).toBe(false);
	});

	it('returns false for an empty signature', () => {
		expect(verifyUnsubscribeToken(42, 'foo@bar.com', '', SECRET)).toBe(false);
	});

	it('accepts the same email-casing variants that sign accepts', () => {
		const sig = signUnsubscribeToken(42, 'foo@bar.com', SECRET);
		expect(verifyUnsubscribeToken(42, 'FOO@BAR.COM', sig, SECRET)).toBe(true);
	});
});

describe('buildUnsubscribeUrl', () => {
	it('produces a URL with cid, email, and sig query params', () => {
		const url = buildUnsubscribeUrl('https://undocustudent.org', 42, 'foo@bar.com', SECRET);
		const parsed = new URL(url);
		expect(parsed.origin + parsed.pathname).toBe('https://undocustudent.org/api/unsubscribe');
		expect(parsed.searchParams.get('cid')).toBe('42');
		expect(parsed.searchParams.get('email')).toBe('foo@bar.com');
		expect(parsed.searchParams.get('sig')).toBe(signUnsubscribeToken(42, 'foo@bar.com', SECRET));
	});

	it('round-trips through verifyUnsubscribeToken with the URL-decoded params', () => {
		const url = buildUnsubscribeUrl('https://undocustudent.org', 42, 'a+b@example.com', SECRET);
		const parsed = new URL(url);
		const cid = Number(parsed.searchParams.get('cid'));
		const email = parsed.searchParams.get('email')!;
		const sig = parsed.searchParams.get('sig')!;
		expect(verifyUnsubscribeToken(cid, email, sig, SECRET)).toBe(true);
	});

	it('strips a trailing slash from baseUrl', () => {
		const url = buildUnsubscribeUrl('https://undocustudent.org/', 42, 'foo@bar.com', SECRET);
		expect(new URL(url).pathname).toBe('/api/unsubscribe');
	});
});
