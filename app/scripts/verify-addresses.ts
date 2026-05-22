/**
 * Verify outreach email addresses through Reoon and prune known-bad ones.
 *
 * Two-phase, idempotent:
 *
 *   Phase 1 — Verify: pick addresses where verified_at IS NULL, submit them to
 *   Reoon's bulk API, persist status/score/verified_at to ALL results
 *   (including invalid/disabled — they get tagged, not yet deleted).
 *
 *   Phase 2 — Apply: delete addresses whose persisted verification_status is
 *   'invalid' or 'disabled', plus any email_outreach_sends rows for them.
 *   `--dry-run` skips this phase only.
 *
 * API cost is bounded: each address hits Reoon at most once, even across
 * repeated dry-runs.
 *
 * Usage:
 *   npx tsx scripts/verify-addresses.ts             # verify + apply
 *   npx tsx scripts/verify-addresses.ts --dry-run   # verify + report pending deletions
 *   npx tsx scripts/verify-addresses.ts --reverify  # re-call API for already-verified rows
 */

import { PrismaClient } from '@prisma/client';
import { config } from 'dotenv';
import { applyVerificationResults, type VerificationResult } from './lib/applyVerification';
import { getPrismaDatabaseUrl, normalizeEnvValue } from './lib/env';
import { createReoonClient, type ReoonPowerResult } from './lib/reoon';

config();

const prisma = new PrismaClient({
	datasources: { db: { url: getPrismaDatabaseUrl() } }
});

const reoonApiKey = normalizeEnvValue(process.env.REOON_API_KEY);
if (!reoonApiKey) {
	throw new Error('REOON_API_KEY must be set');
}
const reoon = createReoonClient(reoonApiKey);

const BATCH_SIZE = 5_000;
const POLL_INTERVAL_MS = 10_000;

async function main(): Promise<void> {
	const dryRun = process.argv.includes('--dry-run');
	const reverify = process.argv.includes('--reverify');

	const addresses = await prisma.emailaddresses.findMany({
		where: reverify ? {} : { verified_at: null },
		select: { emailaddress: true }
	});
	const toVerify = addresses.map((row) => row.emailaddress);

	const allResults: Record<string, ReoonPowerResult> = {};

	if (toVerify.length === 0) {
		console.log('No addresses need verification. Running apply phase only.');
	} else {
		console.log(
			`Verifying ${toVerify.length} addresses via Reoon` +
				(dryRun ? ' (dry run — verification persists, deletions skipped)' : '') +
				(reverify ? ' (--reverify: includes already-verified)' : '')
		);

		for (let offset = 0; offset < toVerify.length; offset += BATCH_SIZE) {
			const batch = toVerify.slice(offset, offset + BATCH_SIZE);
			console.log(`  Submitting batch ${offset / BATCH_SIZE + 1} (${batch.length} addresses)...`);

			const taskId = await reoon.createBulkTask(batch, `undocu-${Date.now()}`);
			console.log(`  Task ${taskId} created. Polling...`);

			const results = await reoon.waitForBulkResult(taskId, {
				intervalMs: POLL_INTERVAL_MS,
				onProgress: (pct, checked, total) => {
					console.log(`    progress: ${pct.toFixed(1)}% (${checked}/${total})`);
				}
			});

			Object.assign(allResults, results);
		}
	}

	const apiResults: VerificationResult[] = Object.entries(allResults).map(([email, result]) => ({
		email,
		status: result.status,
		score: typeof result.overall_score === 'number' ? result.overall_score : null
	}));

	const outcome = await applyVerificationResults(prisma, apiResults, { dryRun });

	if (Object.keys(outcome.statusCounts).length > 0) {
		console.log('\nReoon status breakdown (this run):');
		for (const [status, count] of Object.entries(outcome.statusCounts).sort(
			(a, b) => b[1] - a[1]
		)) {
			console.log(`  ${status.padEnd(15)} ${count}`);
		}
	}

	console.log(`\nPersisted verification on ${outcome.persisted} addresses.`);

	if (outcome.deleteCandidates.length === 0) {
		console.log('No invalid/disabled addresses pending deletion.');
	} else if (dryRun) {
		console.log(
			`\nDry run — ${outcome.deleteCandidates.length} addresses pending deletion (verification persisted).`
		);
		console.log('First 10 that would be deleted:');
		outcome.deleteCandidates.slice(0, 10).forEach((a) => console.log(`  - ${a}`));
		console.log('Run again without --dry-run to apply.');
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
