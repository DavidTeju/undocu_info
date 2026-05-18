const POSTGRES_PROTOCOLS = new Set(['postgresql:', 'postgres:']);

export function normalizeEnvValue(value: string | undefined): string | undefined {
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

export function getPrismaDatabaseUrl(env: NodeJS.ProcessEnv = process.env): string {
	const databaseUrl = normalizeEnvValue(env.DATABASE_URL);
	const directUrl = normalizeEnvValue(env.DIRECT_DATABASE_URL);
	const url = isDockerInternalDatabaseUrl(databaseUrl) ? databaseUrl : (directUrl ?? databaseUrl);
	if (!url) {
		throw new Error('DIRECT_DATABASE_URL or DATABASE_URL must be set');
	}

	const parsed = new URL(url);
	if (!POSTGRES_PROTOCOLS.has(parsed.protocol)) {
		throw new Error('DATABASE_URL must use postgres:// or postgresql://');
	}

	return url;
}

export function getPositiveIntegerEnv(
	name: string,
	env: NodeJS.ProcessEnv = process.env
): number | undefined {
	const value = normalizeEnvValue(env[name]);
	if (value == null) return undefined;

	if (!/^\d+$/.test(value)) {
		throw new Error(`${name} must be a positive integer`);
	}

	const parsed = Number.parseInt(value, 10);
	if (parsed < 1) {
		throw new Error(`${name} must be a positive integer`);
	}

	return parsed;
}

function isDockerInternalDatabaseUrl(url: string | undefined): url is string {
	if (!url) return false;

	try {
		return new URL(url).hostname === 'db';
	} catch {
		return false;
	}
}
