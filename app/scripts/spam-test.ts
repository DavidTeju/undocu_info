/**
 * Spam Deliverability Test
 *
 * Sends the real outreach email template to a hard-coded list of test inboxes
 * (Gmail, Yahoo, Outlook/Microsoft) so we can see how each provider's spam
 * filter handles it. Bypasses the queue, suppression checks, and DB logging —
 * this is a one-off probe.
 *
 * Usage:
 *   cd app && npx tsx scripts/spam-test.ts
 */

import { Resend } from 'resend';
import { config } from 'dotenv';
import {
	SENDER_EMAIL,
	SENDER_NAME,
	generateOutreachEmail,
	type ShowcaseUniversity
} from './lib/emailRenderers';
import { normalizeEnvValue } from './lib/env';
import { formatResendSendError } from './lib/resendErrors';
import { buildUnsubscribeHeaders, getUnsubscribeSecret } from './lib/unsubscribeHeaders';

config();

const TEST_RECIPIENTS = ['doteju01@louisville.edu'];

// Stand-in "college" used to render the template — pick a recognisable name
// and a real domain so the showcase links look representative of a real send.
const TEST_COLLEGE_NAME = 'Stanford University';
const TEST_COLLEGE_DOMAIN = 'stanford';
// Synthetic college id used only to sign the unsubscribe URL. The endpoint
// will record a suppression row for this fake id — harmless and easy to spot.
const TEST_COLLEGE_ID = 0;

// Representative showcase, hard-coded so the test doesn't need DB access.
const TEST_SHOWCASE: ShowcaseUniversity[] = [
	{ name: 'Harvard University', domain: 'harvard', responseCount: 42, state: 'MA' },
	{
		name: 'University of California, Berkeley',
		domain: 'berkeley',
		responseCount: 38,
		state: 'CA'
	},
	{ name: 'Yale University', domain: 'yale', responseCount: 29, state: 'CT' }
];

const SEND_DELAY_MS = 500;

async function main(): Promise<void> {
	const resendApiKey = normalizeEnvValue(process.env.RESEND_API_KEY);
	if (!resendApiKey) {
		throw new Error('RESEND_API_KEY must be set');
	}
	const resend = new Resend(resendApiKey);
	const unsubscribeSecret = getUnsubscribeSecret();

	const { subject, html } = generateOutreachEmail(
		TEST_COLLEGE_NAME,
		TEST_COLLEGE_DOMAIN,
		TEST_SHOWCASE
	);

	console.log(`Sending spam-deliverability probe from ${SENDER_NAME} <${SENDER_EMAIL}>`);
	console.log(`Subject: ${subject}`);
	console.log(`Showcase: ${TEST_SHOWCASE.map((u) => u.name).join(', ')}\n`);

	for (const to of TEST_RECIPIENTS) {
		try {
			const { data, error } = await resend.emails.send({
				from: `${SENDER_NAME} <${SENDER_EMAIL}>`,
				to,
				subject,
				html,
				headers: buildUnsubscribeHeaders(TEST_COLLEGE_ID, to, unsubscribeSecret)
			});

			if (error) {
				console.log(`✗ ${to} — ${formatResendSendError(error)}`);
				continue;
			}

			console.log(`✓ ${to} — id=${data?.id ?? '(none)'}`);
		} catch (err) {
			console.log(`✗ ${to} — ${formatResendSendError(err)}`);
		}

		await new Promise((resolve) => setTimeout(resolve, SEND_DELAY_MS));
	}

	console.log('\nDone. Check each inbox AND each spam/junk folder.');
	console.log(
		'Look for: where it landed, what Gmail/Yahoo/Outlook flagged, headers (SPF/DKIM/DMARC).'
	);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
