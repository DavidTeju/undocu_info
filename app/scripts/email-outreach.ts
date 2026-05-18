/**
 * Email Outreach Script for UndocuStudent
 *
 * Sends outreach emails to universities:
 * - No responses yet → outreach email (request for information)
 * - Has responses → appreciation email (thank you + request to verify)
 *
 * Features:
 * - Queue-based system for Resend's 100 emails/day free tier
 * - Logs all sends for auditing
 * - Handles bounces by removing invalid emails from DB
 *
 * Usage:
 *   cd app && npx tsx scripts/email-outreach.ts [command]
 *
 * Commands:
 *   queue   - Queue emails for all eligible universities
 *   send    - Send up to 100 queued emails
 *   status  - Show current queue status
 *   logs    - Show recent email logs
 */

import { PrismaClient } from '@prisma/client';
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
import { getPrismaDatabaseUrl } from './lib/env';

// Load environment variables
config();

// Use direct connection to avoid pooler prepared statement issues
const prisma = new PrismaClient({
	datasources: {
		db: { url: getPrismaDatabaseUrl() }
	}
});
const resend = new Resend(process.env.RESEND_API_KEY);

const DAILY_LIMIT = 100;

/**
 * Queue emails for all eligible universities
 */
async function queueEmails(): Promise<void> {
	console.log('Queuing emails for eligible universities...\n');

	const showcasePool = await getShowcasePool(prisma);
	console.log(
		`Showcase pool size: ${showcasePool.length} colleges (per-recipient tiered sample at send time: same-state + prestigious first)`
	);

	const colleges = await prisma.colleges.findMany({
		where: {
			hidden: { not: true },
			emailaddresses: { some: {} }
		},
		include: {
			emailaddresses: true,
			_count: { select: { responses: true } }
		}
	});

	let queuedOutreach = 0;
	let queuedAppreciation = 0;
	let skipped = 0;

	for (const college of colleges) {
		const hasResponses = college._count.responses > 0;
		const emailType = hasResponses ? 'appreciation' : 'outreach';

		for (const emailAddr of college.emailaddresses) {
			// Skip if already queued, recently sent, or previously bounced.
			// Including `bounced` prevents re-queuing dead addresses if they ever
			// reappear in `emailaddresses` (e.g. CSV re-import).
			const existing = await prisma.email_outreach_queue.findFirst({
				where: {
					college_id: college.id,
					email_address: emailAddr.emailaddress,
					OR: [
						{ status: 'pending' },
						{ status: 'bounced' },
						{
							status: 'sent',
							sent_at: { gte: new Date(Date.now() - 365 * 24 * 60 * 60 * 1000) }
						}
					]
				}
			});

			if (existing) {
				skipped++;
				continue;
			}

			await prisma.email_outreach_queue.create({
				data: {
					college_id: college.id,
					email_address: emailAddr.emailaddress,
					email_type: emailType,
					status: 'pending'
				}
			});

			if (hasResponses) {
				queuedAppreciation++;
			} else {
				queuedOutreach++;
			}
		}
	}

	console.log(`\nQueued ${queuedOutreach} outreach emails (no responses)`);
	console.log(`Queued ${queuedAppreciation} appreciation emails (have responses)`);
	console.log(`Skipped ${skipped} (already queued or sent this year)`);
}

/**
 * Send up to DAILY_LIMIT queued emails
 */
async function sendEmails(): Promise<void> {
	console.log(`Sending up to ${DAILY_LIMIT} queued emails...\n`);

	const log = await prisma.email_outreach_log.create({
		data: { status: 'running' }
	});

	const showcasePool = await getShowcasePool(prisma);

	const pendingEmails = await prisma.email_outreach_queue.findMany({
		where: {
			status: 'pending',
			OR: [{ scheduled_for: null }, { scheduled_for: { lte: new Date() } }]
		},
		include: {
			colleges: {
				include: { _count: { select: { responses: true } } }
			}
		},
		take: DAILY_LIMIT,
		orderBy: { created_at: 'asc' }
	});

	console.log(`Found ${pendingEmails.length} pending emails to send\n`);

	let sent = 0;
	let failed = 0;
	const details: Array<{ email: string; college: string; status: string; error?: string }> = [];

	for (const queueItem of pendingEmails) {
		const college = queueItem.colleges;

		const emailContent =
			queueItem.email_type === 'appreciation'
				? generateAppreciationEmail(college.name, college.domain, college._count.responses)
				: generateOutreachEmail(
						college.name,
						college.domain,
						pickShowcaseForRecipient(showcasePool, college)
					);

		try {
			const { error } = await resend.emails.send({
				from: `${SENDER_NAME} <${SENDER_EMAIL}>`,
				to: queueItem.email_address,
				subject: emailContent.subject,
				html: emailContent.html
			});

			if (error) throw new Error(error.message);

			await prisma.email_outreach_queue.update({
				where: { id: queueItem.id },
				data: { status: 'sent', sent_at: new Date() }
			});

			sent++;
			details.push({ email: queueItem.email_address, college: college.name, status: 'sent' });
			console.log(`✓ Sent to ${queueItem.email_address} (${college.name})`);
		} catch (err) {
			const errorMessage = err instanceof Error ? err.message : 'Unknown error';
			const isBounce = /bounce|invalid|rejected/i.test(errorMessage);

			if (isBounce) {
				// Atomic: delete the dead address AND mark the queue row bounced
				// together, so we never have a deleted address with a still-pending
				// queue row pointing at it.
				await prisma.$transaction([
					prisma.emailaddresses.delete({
						where: { emailaddress: queueItem.email_address }
					}),
					prisma.email_outreach_queue.update({
						where: { id: queueItem.id },
						data: { status: 'bounced', error_message: errorMessage }
					})
				]);
				console.log(`✗ Bounced: ${queueItem.email_address} (removed from database)`);
			} else {
				await prisma.email_outreach_queue.update({
					where: { id: queueItem.id },
					data: { status: 'failed', error_message: errorMessage }
				});
				console.log(`✗ Failed: ${queueItem.email_address} - ${errorMessage}`);
			}

			failed++;
			details.push({
				email: queueItem.email_address,
				college: college.name,
				status: isBounce ? 'bounced' : 'failed',
				error: errorMessage
			});
		}

		// Rate limiting delay
		await new Promise((resolve) => setTimeout(resolve, 100));
	}

	await prisma.email_outreach_log.update({
		where: { id: log.id },
		data: {
			run_completed_at: new Date(),
			total_queued: pendingEmails.length,
			total_sent: sent,
			total_failed: failed,
			total_bounced: details.filter((d) => d.status === 'bounced').length,
			details: details,
			status: 'completed'
		}
	});

	console.log(`\n--- Summary ---`);
	console.log(`Sent: ${sent}`);
	console.log(`Failed: ${failed}`);
	console.log(`Log ID: ${log.id}`);
}

/**
 * Show current queue status
 */
async function showStatus(): Promise<void> {
	const pending = await prisma.email_outreach_queue.count({ where: { status: 'pending' } });
	const sent = await prisma.email_outreach_queue.count({ where: { status: 'sent' } });
	const failed = await prisma.email_outreach_queue.count({ where: { status: 'failed' } });
	const bounced = await prisma.email_outreach_queue.count({ where: { status: 'bounced' } });

	const pendingByType = await prisma.email_outreach_queue.groupBy({
		by: ['email_type'],
		where: { status: 'pending' },
		_count: true
	});

	console.log('=== Email Queue Status ===\n');
	console.log(`Pending: ${pending}`);
	pendingByType.forEach((t) => console.log(`  - ${t.email_type}: ${t._count}`));
	console.log(`Sent: ${sent}`);
	console.log(`Failed: ${failed}`);
	console.log(`Bounced: ${bounced}`);
	console.log(`\nDays to complete queue: ${Math.ceil(pending / DAILY_LIMIT)}`);
}

/**
 * Show recent email logs
 */
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
			`  Sent: ${log.total_sent} / Failed: ${log.total_failed} / Bounced: ${log.total_bounced}`
		);
		if (log.run_completed_at) {
			const duration = (log.run_completed_at.getTime() - log.run_started_at.getTime()) / 1000;
			console.log(`  Duration: ${duration.toFixed(1)}s`);
		}
		console.log('');
	}
}

// Main CLI
async function main() {
	const command = process.argv[2];

	switch (command) {
		case 'queue':
			await queueEmails();
			break;
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
  queue   - Queue emails for all eligible universities
  send    - Send up to ${DAILY_LIMIT} queued emails
  status  - Show current queue status
  logs    - Show recent email logs

Environment variables required:
  RESEND_API_KEY    - Your Resend API key
  DATABASE_URL      - PostgreSQL connection string
`);
	}

	await prisma.$disconnect();
}

main().catch((e) => {
	console.error(e);
	prisma.$disconnect();
	process.exit(1);
});
