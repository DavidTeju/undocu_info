/**
 * Followup outreach: re-engage college contacts who received an initial
 * outreach 14+ days ago and have not produced a response or suggestion.
 *
 * Usage:
 *   npx tsx scripts/email-followup.ts [--send] [--limit N]
 *
 * Default mode is dry-run; --send actually fires through Resend and writes
 * email_outreach_sends rows with email_type = 'followup'.
 */

import { Prisma, PrismaClient } from '@prisma/client';
import { Resend } from 'resend';
import { config } from 'dotenv';
import { generateFollowupEmail } from './lib/followupRenderer';
import { getPrismaDatabaseUrl, normalizeEnvValue } from './lib/env';
import { formatResendSendError } from './lib/resendErrors';
import { buildUnsubscribeHeaders, getUnsubscribeSecret } from './lib/unsubscribeHeaders';

config();

const SENDER_NAME = 'David Tejuosho';
const SENDER_EMAIL = 'davidtejuosho@undocustudent.org';
const FOLLOWUP_WINDOW_DAYS = 14;
const SEND_DELAY_MS = 100;
const DRY_RUN_TEXT_PREVIEW_CHARS = 200;

interface FollowupCandidate {
	college_id: number;
	college_name: string;
	college_domain: string;
	email_address: string;
	sent_at: Date;
}

function parseLimitFlag(argv: readonly string[]): number | null {
	const idx = argv.indexOf('--limit');
	if (idx === -1) return null;
	const raw = argv[idx + 1];
	if (raw === undefined) {
		throw new Error('--limit requires a value');
	}
	if (!/^\d+$/.test(raw)) {
		throw new Error(`--limit must be a positive integer, got "${raw}"`);
	}
	const n = Number.parseInt(raw, 10);
	if (n < 1) {
		throw new Error('--limit must be >= 1');
	}
	return n;
}

function getFollowupCutoff(now: Date = new Date()): Date {
	return new Date(now.getTime() - FOLLOWUP_WINDOW_DAYS * 24 * 60 * 60 * 1000);
}

async function findFollowupCandidates(
	prisma: PrismaClient,
	limit: number | null
): Promise<FollowupCandidate[]> {
	const cutoff = getFollowupCutoff();
	const limitSql = limit === null ? Prisma.sql`` : Prisma.sql`LIMIT ${limit}`;

	return prisma.$queryRaw<FollowupCandidate[]>`
		WITH latest_sends AS (
			SELECT DISTINCT ON (s.college_id)
				s.college_id,
				s.email_address,
				s.sent_at
			FROM email_outreach_sends s
			WHERE s.status = 'sent'
				AND s.sent_at IS NOT NULL
				AND s.sent_at >= ${cutoff}
			ORDER BY s.college_id, s.sent_at DESC
		)
		SELECT
			ls.college_id,
			c.name AS college_name,
			c.domain AS college_domain,
			ls.email_address,
			ls.sent_at
		FROM latest_sends ls
		JOIN colleges c ON c.id = ls.college_id
		WHERE (c.hidden IS NULL OR c.hidden = false)
			AND NOT EXISTS (
				SELECT 1 FROM responses r
				WHERE r.collegeid = ls.college_id
			)
			AND NOT EXISTS (
				SELECT 1 FROM "Suggestions" sg
				WHERE sg.college_domain = c.domain
					AND sg.created_at > ls.sent_at
			)
		ORDER BY ls.sent_at ASC
		${limitSql}
	`;
}

async function runDryRun(prisma: PrismaClient, limit: number | null): Promise<void> {
	// Use placeholders so a missing-secret env doesn't block local discovery.
	const placeholderAuthSecret = normalizeEnvValue(process.env.EDIT_AUTH_HMAC_SECRET) ?? 'DRY_RUN';

	const candidates = await findFollowupCandidates(prisma, limit);

	console.log(
		`Followup dry-run — ${FOLLOWUP_WINDOW_DAYS}-day window, ${candidates.length} candidate(s)\n`
	);

	for (const c of candidates) {
		const { subject, text } = generateFollowupEmail(
			{ id: c.college_id, name: c.college_name, domain: c.college_domain },
			c.email_address,
			placeholderAuthSecret
		);
		const preview = text.replace(/\s+/g, ' ').slice(0, DRY_RUN_TEXT_PREVIEW_CHARS);
		console.log(`- domain: ${c.college_domain}`);
		console.log(`  recipient: ${c.email_address}`);
		console.log(`  subject: ${subject}`);
		console.log(`  preview: ${preview}`);
		console.log('');
	}

	console.log(`Summary: ${candidates.length} candidate(s) eligible for followup.`);
}

async function runSend(prisma: PrismaClient, limit: number | null): Promise<void> {
	const resendApiKey = normalizeEnvValue(process.env.RESEND_API_KEY);
	if (!resendApiKey) {
		throw new Error('RESEND_API_KEY must be set');
	}
	const authSecret = normalizeEnvValue(process.env.EDIT_AUTH_HMAC_SECRET);
	if (!authSecret) {
		throw new Error('EDIT_AUTH_HMAC_SECRET must be set');
	}
	const unsubscribeSecret = getUnsubscribeSecret();
	const resend = new Resend(resendApiKey);

	const candidates = await findFollowupCandidates(prisma, limit);
	console.log(`Sending ${candidates.length} followup email(s)...\n`);

	let sent = 0;
	let failed = 0;

	for (const c of candidates) {
		const { subject, html, text } = generateFollowupEmail(
			{ id: c.college_id, name: c.college_name, domain: c.college_domain },
			c.email_address,
			authSecret
		);

		try {
			const { data, error } = await resend.emails.send({
				from: `${SENDER_NAME} <${SENDER_EMAIL}>`,
				to: c.email_address,
				subject,
				html,
				text,
				headers: buildUnsubscribeHeaders(c.college_id, c.email_address, unsubscribeSecret)
			});

			if (error) {
				const message = formatResendSendError(error);
				await prisma.email_outreach_sends.create({
					data: {
						college_id: c.college_id,
						email_address: c.email_address,
						email_type: 'followup',
						status: 'failed',
						error_message: message
					}
				});
				failed++;
				console.log(`x Failed: ${c.email_address} - ${message}`);
				continue;
			}

			if (!data?.id) {
				throw new Error('Resend send succeeded without an email id');
			}

			await prisma.email_outreach_sends.create({
				data: {
					college_id: c.college_id,
					email_address: c.email_address,
					email_type: 'followup',
					status: 'sent',
					sent_at: new Date(),
					resend_email_id: data.id
				}
			});
			sent++;
			console.log(`. Sent followup to ${c.email_address} (${c.college_name})`);
		} catch (err) {
			const message = formatResendSendError(err);
			await prisma.email_outreach_sends.create({
				data: {
					college_id: c.college_id,
					email_address: c.email_address,
					email_type: 'followup',
					status: 'failed',
					error_message: message
				}
			});
			failed++;
			console.log(`x Failed: ${c.email_address} - ${message}`);
		}

		await new Promise((resolve) => setTimeout(resolve, SEND_DELAY_MS));
	}

	console.log(`\n--- Summary ---`);
	console.log(`Sent:   ${sent}`);
	console.log(`Failed: ${failed}`);
}

async function main(): Promise<void> {
	const argv = process.argv;
	const send = argv.includes('--send');
	const limit = parseLimitFlag(argv);

	const prisma = new PrismaClient({
		datasources: { db: { url: getPrismaDatabaseUrl() } }
	});

	try {
		if (send) {
			await runSend(prisma, limit);
		} else {
			await runDryRun(prisma, limit);
		}
	} finally {
		await prisma.$disconnect();
	}
}

main().catch((err) => {
	console.error(err);
	process.exit(1);
});
