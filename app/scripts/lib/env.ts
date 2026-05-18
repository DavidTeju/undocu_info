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
	const url = normalizeEnvValue(env.DIRECT_DATABASE_URL) ?? normalizeEnvValue(env.DATABASE_URL);
	if (!url) {
		throw new Error('DIRECT_DATABASE_URL or DATABASE_URL must be set');
	}

	const parsed = new URL(url);
	if (!POSTGRES_PROTOCOLS.has(parsed.protocol)) {
		throw new Error('DATABASE_URL must use postgres:// or postgresql://');
	}

	return url;
}
