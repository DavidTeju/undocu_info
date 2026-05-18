import { describe, expect, it } from 'vitest';
import { getPrismaDatabaseUrl, normalizeEnvValue } from './env';

describe('script environment helpers', () => {
	it('strips matching quotes from env-file values', () => {
		expect(normalizeEnvValue('"postgresql://db.example/app"')).toBe('postgresql://db.example/app');
		expect(normalizeEnvValue("'postgresql://db.example/app'")).toBe('postgresql://db.example/app');
	});

	it('prefers the direct database URL after normalizing quotes', () => {
		expect(
			getPrismaDatabaseUrl({
				DATABASE_URL: 'postgresql://db.internal/app',
				DIRECT_DATABASE_URL: '"postgresql://db.external/app"'
			})
		).toBe('postgresql://db.external/app');
	});

	it('falls back to DATABASE_URL when DIRECT_DATABASE_URL is unset', () => {
		expect(getPrismaDatabaseUrl({ DATABASE_URL: 'postgres://db.internal/app' })).toBe(
			'postgres://db.internal/app'
		);
	});

	it('rejects non-Postgres URLs', () => {
		expect(() => getPrismaDatabaseUrl({ DATABASE_URL: '"mysql://db.example/app"' })).toThrow(
			'DATABASE_URL must use postgres:// or postgresql://'
		);
	});
});
