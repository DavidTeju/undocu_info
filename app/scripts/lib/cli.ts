/**
 * Parse `--tier <n>` from process argv.
 * Returns 1 | 2 | 3 if present and valid, null if the flag is absent.
 * Throws when the flag is present but the value is missing, non-numeric, or out of range.
 */
export function parseTierFlag(argv: readonly string[]): 1 | 2 | 3 | null {
	const idx = argv.indexOf('--tier');
	if (idx === -1) return null;

	const raw = argv[idx + 1];
	if (raw === undefined) {
		throw new Error('--tier requires a value (1, 2, or 3)');
	}

	if (!/^\d+$/.test(raw)) {
		throw new Error(`--tier must be a positive integer, got "${raw}"`);
	}

	const tier = Number.parseInt(raw, 10);
	if (tier !== 1 && tier !== 2 && tier !== 3) {
		throw new Error(`--tier must be 1, 2, or 3 (got ${tier})`);
	}

	return tier;
}
