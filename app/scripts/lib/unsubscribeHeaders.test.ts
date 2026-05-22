import { describe, expect, it } from 'vitest';
import { buildUnsubscribeHeaders, getUnsubscribeSecret } from './unsubscribeHeaders';

describe('buildUnsubscribeHeaders', () => {
	const SECRET = 'test-secret';

	it('returns both List-Unsubscribe and List-Unsubscribe-Post', () => {
		const headers = buildUnsubscribeHeaders(42, 'foo@bar.com', SECRET);
		expect(Object.keys(headers).sort()).toEqual(
			['List-Unsubscribe', 'List-Unsubscribe-Post'].sort()
		);
	});

	it('formats List-Unsubscribe with mailto first, then https URL, both in angle brackets', () => {
		const headers = buildUnsubscribeHeaders(42, 'foo@bar.com', SECRET);
		const lu = headers['List-Unsubscribe'];
		expect(lu).toMatch(
			/^<mailto:unsubscribe@undocustudent\.org\?subject=unsubscribe>, <https:\/\/undocustudent\.org\/api\/unsubscribe\?cid=42&email=foo%40bar\.com&sig=[A-Za-z0-9_-]+>$/
		);
	});

	it('sets List-Unsubscribe-Post to the RFC 8058 one-click sentinel', () => {
		const headers = buildUnsubscribeHeaders(42, 'foo@bar.com', SECRET);
		expect(headers['List-Unsubscribe-Post']).toBe('List-Unsubscribe=One-Click');
	});

	it('allows overriding the base URL (useful for local testing)', () => {
		const headers = buildUnsubscribeHeaders(42, 'foo@bar.com', SECRET, 'http://localhost:5173');
		expect(headers['List-Unsubscribe']).toContain('<http://localhost:5173/api/unsubscribe?');
	});
});

describe('getUnsubscribeSecret', () => {
	it('returns the secret when set', () => {
		expect(getUnsubscribeSecret({ UNSUBSCRIBE_HMAC_SECRET: 'abc123' })).toBe('abc123');
	});

	it('strips surrounding quotes', () => {
		expect(getUnsubscribeSecret({ UNSUBSCRIBE_HMAC_SECRET: '"abc123"' })).toBe('abc123');
	});

	it('throws when missing', () => {
		expect(() => getUnsubscribeSecret({})).toThrow(/UNSUBSCRIBE_HMAC_SECRET/);
	});

	it('throws when empty/whitespace-only', () => {
		expect(() => getUnsubscribeSecret({ UNSUBSCRIBE_HMAC_SECRET: '   ' })).toThrow(
			/UNSUBSCRIBE_HMAC_SECRET/
		);
	});
});
