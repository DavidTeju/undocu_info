/**
 * Email Outreach Script for UndocuStudent
 *
 * Unified send: each invocation discovers eligible (college, address) pairs,
 * tier-sorts them by Reoon verification, picks the email type from the live
 * response count, sends via Resend, and records the outcome.
 *
 * There is no separate "queue" step. Eligibility = address exists in
 * `emailaddresses`, college isn't hidden, address isn't suppressed, and we
 * haven't successfully sent to that (college, address) pair in the last 365
 * days (and there's no permanent failure on record).
 *
 * Usage:
 *   cd app && npx tsx scripts/email-outreach.ts [command]
 *
 * Commands:
 *   send           - Send up to EMAIL_DAILY_LIMIT eligible emails
 *   send --tier N  - Restrict to addresses in tier N (1, 2, or 3)
 *   status         - Show eligible-to-send breakdown by tier
 *   logs           - Show recent run logs
 */

import { Prisma, PrismaClient } from '@prisma/client';
import { Resend } from 'resend';
import { config } from 'dotenv';
import {
	SENDER_EMAIL,
	SENDER_NAME,
	generateAppreciationEmail,
	generateOutreachEmail,
	getShowcasePool,
	pickShowcaseForRecipient
} from './lib/emailRenderers';
import { parseTierFlag } from './lib/cli';
import { getPositiveIntegerEnv, getPrismaDatabaseUrl, normalizeEnvValue } from './lib/env';
import { formatResendSendError } from './lib/resendErrors';
import { buildUnsubscribeHeaders, getUnsubscribeSecret } from './lib/unsubscribeHeaders';
import { buildEligibleAddressesSql, getSentHistoryCutoff } from '../src/lib/server/eligibility';

config();

const prisma = new PrismaClient({
	datasources: { db: { url: getPrismaDatabaseUrl() } }
});
const resendApiKey = normalizeEnvValue(process.env.RESEND_API_KEY);
if (!resendApiKey) {
	throw new Error('RESEND_API_KEY must be set');
}
const resend = new Resend(resendApiKey);
const unsubscribeSecret = getUnsubscribeSecret();

const DEFAULT_DAILY_LIMIT = 100;
const DAILY_LIMIT = getPositiveIntegerEnv('EMAIL_DAILY_LIMIT') ?? DEFAULT_DAILY_LIMIT;
const DEFAULT_SEND_DELAY_MS = 100;
const SEND_DELAY_MS = getPositiveIntegerEnv('SEND_DELAY_MS') ?? DEFAULT_SEND_DELAY_MS;

interface EligibleCandidate {
	college_id: number;
	email_address: string;
	tier: number;
}

async function findEligibleCandidates(
	limit: number,
	tierFilter: 1 | 2 | 3 | null
): Promise<EligibleCandidate[]> {
	const eligibleSql = buildEligibleAddressesSql(getSentHistoryCutoff());
	return prisma.$queryRaw<EligibleCandidate[]>`
		WITH eligible AS (${eligibleSql})
		SELECT college_id, email_address, tier
		FROM eligible
		WHERE ${tierFilter === null ? Prisma.sql`TRUE` : Prisma.sql`tier = ${tierFilter}`}
		ORDER BY tier ASC, score DESC, email_address ASC
		LIMIT ${limit}
	`;
}

/**
 * Send eligible emails. Each invocation discovers candidates fresh.
 */
async function sendEmails(): Promise<void> {
	const tier = parseTierFlag(process.argv);

	const tierLabel = tier === null ? 'all tiers' : `tier ${tier} only`;
	console.log(`Sending up to ${DAILY_LIMIT} emails (${tierLabel})...\n`);

	const log = await prisma.email_outreach_log.create({
		data: { status: 'running' }
	});

	const showcasePool = await getShowcasePool(prisma);
	const candidates = await findEligibleCandidates(DAILY_LIMIT, tier);

	console.log(`Found ${candidates.length} eligible addresses to send to\n`);

	const collegeIds = Array.from(new Set(candidates.map((c) => c.college_id)));
	const collegeRows = await prisma.colleges.findMany({
		where: { id: { in: collegeIds } },
		include: { _count: { select: { responses: true } } }
	});
	const collegesById = new Map(collegeRows.map((row) => [row.id, row]));

	let sent = 0;
	let failed = 0;
	const details: Array<{ email: string; college: string; status: string; error?: string }> = [];

	const recordFailure = async (
		collegeId: number,
		collegeName: string,
		email: string,
		emailType: 'appreciation' | 'outreach',
		errorMessage: string
	): Promise<void> => {
		await prisma.email_outreach_sends.create({
			data: {
				college_id: collegeId,
				email_address: email,
				email_type: emailType,
				status: 'failed',
				error_message: errorMessage
			}
		});
		failed++;
		details.push({ email, college: collegeName, status: 'failed', error: errorMessage });
		console.log(`✗ Failed: ${email} - ${errorMessage}`);
	};

	for (const candidate of candidates) {
		const college = collegesById.get(candidate.college_id);
		if (!college) {
			console.log(`✗ Skip ${candidate.email_address} — college ${candidate.college_id} missing`);
			continue;
		}

		const responseCount = college._count.responses;
		const emailType: 'appreciation' | 'outreach' = responseCount > 0 ? 'appreciation' : 'outreach';
		const emailContent =
			emailType === 'appreciation'
				? generateAppreciationEmail(college.name, college.domain, responseCount)
				: generateOutreachEmail(
						college.name,
						college.domain,
						pickShowcaseForRecipient(showcasePool, college)
					);

		try {
			const { data, error } = await resend.emails.send({
				from: `${SENDER_NAME} <${SENDER_EMAIL}>`,
				to: candidate.email_address,
				subject: emailContent.subject,
				html: emailContent.html,
				headers: buildUnsubscribeHeaders(college.id, candidate.email_address, unsubscribeSecret)
			});

			if (error) {
				await recordFailure(
					college.id,
					college.name,
					candidate.email_address,
					emailType,
					formatResendSendError(error)
				);
				continue;
			}

			if (!data?.id) {
				throw new Error('Resend send succeeded without an email id');
			}

			await prisma.email_outreach_sends.create({
				data: {
					college_id: college.id,
					email_address: candidate.email_address,
					email_type: emailType,
					status: 'sent',
					sent_at: new Date(),
					resend_email_id: data.id
				}
			});

			sent++;
			details.push({
				email: candidate.email_address,
				college: college.name,
				status: 'sent'
			});
			console.log(`✓ Sent to ${candidate.email_address} (${college.name}, ${emailType})`);
		} catch (err) {
			await recordFailure(
				college.id,
				college.name,
				candidate.email_address,
				emailType,
				formatResendSendError(err)
			);
		}

		await new Promise((resolve) => setTimeout(resolve, SEND_DELAY_MS));
	}

	await prisma.email_outreach_log.update({
		where: { id: log.id },
		data: {
			run_completed_at: new Date(),
			total_queued: candidates.length,
			total_sent: sent,
			total_failed: failed,
			total_bounced: 0, // bounces are async via webhook; never observed at send time
			details: details,
			status: 'completed'
		}
	});

	console.log(`\n--- Summary ---`);
	console.log(`Eligible considered: ${candidates.length}`);
	console.log(`Sent: ${sent}`);
	console.log(`Failed: ${failed}`);
	console.log(`Log ID: ${log.id}`);
}

async function showStatus(): Promise<void> {
	const eligibleSql = buildEligibleAddressesSql(getSentHistoryCutoff());

	const [tierCounts, sent, failed, bounced, suppressed, complained] = await Promise.all([
		prisma.$queryRaw<Array<{ tier: number; n: bigint }>>`
			SELECT tier, COUNT(*)::bigint AS n FROM (${eligibleSql}) ranked
			GROUP BY tier
			ORDER BY tier ASC
		`,
		prisma.email_outreach_sends.count({ where: { status: 'sent' } }),
		prisma.email_outreach_sends.count({ where: { status: 'failed' } }),
		prisma.email_outreach_sends.count({ where: { status: 'bounced' } }),
		prisma.email_outreach_sends.count({ where: { status: 'suppressed' } }),
		prisma.email_outreach_sends.count({ where: { status: 'complained' } })
	]);

	const eligibleByTier: Record<number, number> = { 1: 0, 2: 0, 3: 0 };
	for (const row of tierCounts) {
		eligibleByTier[row.tier] = Number(row.n);
	}
	const totalEligible = eligibleByTier[1] + eligibleByTier[2] + eligibleByTier[3];

	console.log('=== Email Outreach Status ===\n');
	console.log(`Eligible to send: ${totalEligible}`);
	console.log(`  Tier 1 (safe/role_account):     ${eligibleByTier[1]}`);
	console.log(`  Tier 2 (catch_all/inbox_full):  ${eligibleByTier[2]}`);
	console.log(`  Tier 3 (unknown/unverified):    ${eligibleByTier[3]}`);
	console.log(`\nHistory:`);
	console.log(`  Sent:       ${sent}`);
	console.log(`  Failed:     ${failed}`);
	console.log(`  Bounced:    ${bounced}`);
	console.log(`  Suppressed: ${suppressed}`);
	console.log(`  Complained: ${complained}`);
	console.log(
		`\nAt ${DAILY_LIMIT}/day, draining all tiers would take ~${Math.ceil(totalEligible / DAILY_LIMIT)} days.`
	);
}

async function showLogs(): Promise<void> {
	const logs = await prisma.email_outreach_log.findMany({
		orderBy: { run_started_at: 'desc' },
		take: 10
	});

	console.log('=== Recent Email Outreach Logs ===\n');

	if (logs.length === 0) {
		console.log('No logs found.');
		return;
	}

	for (const log of logs) {
		console.log(`Run #${log.id} - ${log.run_started_at.toISOString()}`);
		console.log(`  Status: ${log.status}`);
		console.log(
			`  Sent: ${log.total_sent} / Failed: ${log.total_failed} / Bounced (async): ${log.total_bounced}`
		);
		if (log.run_completed_at) {
			const duration = (log.run_completed_at.getTime() - log.run_started_at.getTime()) / 1000;
			console.log(`  Duration: ${duration.toFixed(1)}s`);
		}
		console.log('');
	}
}

async function main() {
	const command = process.argv[2];

	switch (command) {
		case 'send':
			await sendEmails();
			break;
		case 'status':
			await showStatus();
			break;
		case 'logs':
			await showLogs();
			break;
		default:
			console.log(`
Email Outreach Script for UndocuStudent

Usage: npx tsx scripts/email-outreach.ts [command]

Commands:
  send             - Send up to ${DAILY_LIMIT} eligible emails
  send --tier N    - Restrict to tier N (1, 2, or 3)
  status           - Show eligible-to-send breakdown by tier
  logs             - Show recent run logs

Environment variables:
  RESEND_API_KEY    - Resend API key (required)
  DATABASE_URL      - Postgres connection string (required)
  EMAIL_DAILY_LIMIT - Max sends per invocation (default: ${DEFAULT_DAILY_LIMIT})
  SEND_DELAY_MS     - Pause between sends in ms (default: ${DEFAULT_SEND_DELAY_MS})

Tier semantics (set by scripts/verify-addresses.ts):
  Tier 1 — Reoon status 'safe' or 'role_account'
  Tier 2 — Reoon status 'catch_all' or 'inbox_full'
  Tier 3 — unverified or 'unknown'
`);
	}

	await prisma.$disconnect();
}

main().catch((e) => {
	console.error(e);
	prisma.$disconnect();
	process.exit(1);
});
