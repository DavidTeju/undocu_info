import { describe, expect, it } from 'vitest';
import { parseTierFlag } from './cli';

describe('parseTierFlag', () => {
	it('returns null when --tier is absent', () => {
		expect(parseTierFlag(['node', 'script.ts', 'send'])).toBeNull();
	});

	it('parses --tier 1, 2, and 3', () => {
		expect(parseTierFlag(['--tier', '1'])).toBe(1);
		expect(parseTierFlag(['--tier', '2'])).toBe(2);
		expect(parseTierFlag(['send', '--tier', '3'])).toBe(3);
	});

	it('throws when --tier is given without a value', () => {
		expect(() => parseTierFlag(['--tier'])).toThrow('--tier requires a value');
	});

	it('throws on non-numeric values', () => {
		expect(() => parseTierFlag(['--tier', 'one'])).toThrow('positive integer');
		expect(() => parseTierFlag(['--tier', '1.5'])).toThrow('positive integer');
	});

	it('throws on values outside 1–3', () => {
		expect(() => parseTierFlag(['--tier', '0'])).toThrow('must be 1, 2, or 3');
		expect(() => parseTierFlag(['--tier', '4'])).toThrow('must be 1, 2, or 3');
	});
});
