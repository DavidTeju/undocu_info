import { describe, expect, it } from 'vitest';
import { getPositiveIntegerEnv, getPrismaDatabaseUrl, normalizeEnvValue } from './env';

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

	it('prefers the Docker-internal database URL over an external direct URL', () => {
		expect(
			getPrismaDatabaseUrl({
				DATABASE_URL: 'postgresql://postgres:postgres@db:5432/postgres',
				DIRECT_DATABASE_URL: '"postgresql://postgres:postgres@82.29.152.139:5432/postgres"'
			})
		).toBe('postgresql://postgres:postgres@db:5432/postgres');
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

	it('parses quoted positive integer env values', () => {
		expect(getPositiveIntegerEnv('EMAIL_DAILY_LIMIT', { EMAIL_DAILY_LIMIT: '"5"' })).toBe(5);
	});

	it('rejects non-positive integer env values', () => {
		expect(() => getPositiveIntegerEnv('EMAIL_DAILY_LIMIT', { EMAIL_DAILY_LIMIT: '0' })).toThrow(
			'EMAIL_DAILY_LIMIT must be a positive integer'
		);
		expect(() => getPositiveIntegerEnv('EMAIL_DAILY_LIMIT', { EMAIL_DAILY_LIMIT: '1.5' })).toThrow(
			'EMAIL_DAILY_LIMIT must be a positive integer'
		);
	});
});
