/**
 * Import Reoon bulk-verification CSV results into the database.
 *
 * Use this to seed addresses you've already verified via Reoon's web dashboard
 * (i.e. you have a Result-NNNNNN-ALL.csv file) without paying for re-verification.
 *
 * Usage:
 *   npx tsx scripts/import-reoon-csv.ts <csv-path> [<csv-path>...] [--dry-run]
 *
 * Example:
 *   npx tsx scripts/import-reoon-csv.ts \
 *     ~/Library/CloudStorage/Dropbox/Downloads/Result-5697025-ALL.csv \
 *     ~/Library/CloudStorage/Dropbox/Downloads/Result-5697049-ALL.csv
 *
 * Behavior mirrors `verify-addresses.ts`: persists verification_status/score/
 * verified_at, then (unless --dry-run) deletes addresses whose status is
 * 'invalid' or 'disabled'.
 */

import { readFileSync } from 'node:fs';
import { PrismaClient } from '@prisma/client';
import { config } from 'dotenv';
import { applyVerificationResults, type VerificationResult } from './lib/applyVerification';
import { getPrismaDatabaseUrl } from './lib/env';

config();

const prisma = new PrismaClient({
	datasources: { db: { url: getPrismaDatabaseUrl() } }
});

/**
 * Tiny CSV parser sufficient for Reoon's exports. Reoon's CSVs do not quote
 * fields with embedded commas in the columns we care about (`email`, `status`,
 * `overall_score`), so a header-driven split is fine. The mx_records column
 * does contain semicolons but we don't use it here.
 */
function parseCsv(text: string): Array<Record<string, string>> {
	const lines = text
		.split(/\r?\n/)
		.map((line) => line.trim())
		.filter((line) => line.length > 0);
	if (lines.length < 2) return [];

	const headers = lines[0].split(',');
	return lines.slice(1).map((line) => {
		const values = line.split(',');
		const row: Record<string, string> = {};
		headers.forEach((header, idx) => {
			row[header] = values[idx] ?? '';
		});
		return row;
	});
}

function csvRowsToResults(rows: Array<Record<string, string>>): VerificationResult[] {
	const results: VerificationResult[] = [];
	for (const row of rows) {
		const email = row.email?.trim();
		const status = row.status?.trim();
		if (!email || !status) continue;

		const rawScore = row.overall_score?.trim();
		const score = rawScore && /^\d+$/.test(rawScore) ? Number.parseInt(rawScore, 10) : null;

		results.push({ email, status, score });
	}
	return results;
}

async function main(): Promise<void> {
	const args = process.argv.slice(2);
	const dryRun = args.includes('--dry-run');
	const paths = args.filter((arg) => !arg.startsWith('--'));

	if (paths.length === 0) {
		console.error('Usage: tsx scripts/import-reoon-csv.ts <csv-path> [<csv-path>...] [--dry-run]');
		process.exit(1);
	}

	const allResults: VerificationResult[] = [];
	for (const path of paths) {
		const text = readFileSync(path, 'utf8');
		const rows = parseCsv(text);
		const results = csvRowsToResults(rows);
		console.log(`  ${path}: ${results.length} rows`);
		allResults.push(...results);
	}

	// Dedup by email — last one wins (the most recent file is likely most accurate)
	const dedup = new Map<string, VerificationResult>();
	for (const r of allResults) dedup.set(r.email, r);
	const finalResults = Array.from(dedup.values());

	console.log(
		`\nImporting ${finalResults.length} unique results` +
			(allResults.length > finalResults.length
				? ` (${allResults.length - finalResults.length} duplicates collapsed)`
				: '') +
			(dryRun ? ' (dry run — verification persists, deletions skipped)' : '')
	);

	const outcome = await applyVerificationResults(prisma, finalResults, { dryRun });

	console.log('\nStatus breakdown:');
	for (const [status, count] of Object.entries(outcome.statusCounts).sort((a, b) => b[1] - a[1])) {
		console.log(`  ${status.padEnd(15)} ${count}`);
	}
	console.log(
		`\nPersisted verification on ${outcome.persisted} addresses ` +
			`(rows missing from emailaddresses are silently skipped).`
	);

	if (outcome.deleteCandidates.length === 0) {
		console.log('No invalid/disabled addresses pending deletion.');
	} else if (dryRun) {
		console.log(`\nDry run — ${outcome.deleteCandidates.length} addresses pending deletion.`);
		console.log('First 10 that would be deleted:');
		outcome.deleteCandidates.slice(0, 10).forEach((a) => console.log(`  - ${a}`));
	} else {
		console.log(
			`Deleted ${outcome.deletedAddresses} addresses and ${outcome.deletedSendRows} email_outreach_sends rows.`
		);
	}
}

main()
	.catch((err) => {
		console.error(err);
		process.exit(1);
	})
	.finally(() => prisma.$disconnect());
