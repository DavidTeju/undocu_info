/**
 * Spam deliverability probe for the appreciation template.
 * Mirrors spam-test.ts but uses generateAppreciationEmail instead.
 *
 * Usage:
 *   cd app && npx tsx scripts/spam-test-appreciation.ts
 */

import { Resend } from 'resend';
import { config } from 'dotenv';
import { SENDER_EMAIL, SENDER_NAME, generateAppreciationEmail } from './lib/emailRenderers';
import { normalizeEnvValue } from './lib/env';
import { formatResendSendError } from './lib/resendErrors';
import { buildUnsubscribeHeaders, getUnsubscribeSecret } from './lib/unsubscribeHeaders';

config();

const TEST_RECIPIENTS = ['tejuoshodavid@gmail.com', 'tejuoshodavid@yahoo.com'];

const TEST_COLLEGE_NAME = 'Stanford University';
const TEST_COLLEGE_DOMAIN = 'stanford';
const TEST_COLLEGE_ID = 0;
const TEST_RESPONSE_COUNT = 12;

const SEND_DELAY_MS = 500;

async function main(): Promise<void> {
	const resendApiKey = normalizeEnvValue(process.env.RESEND_API_KEY);
	if (!resendApiKey) {
		throw new Error('RESEND_API_KEY must be set');
	}
	const resend = new Resend(resendApiKey);
	const unsubscribeSecret = getUnsubscribeSecret();

	const { subject, html, text } = generateAppreciationEmail(
		TEST_COLLEGE_NAME,
		TEST_COLLEGE_DOMAIN,
		TEST_RESPONSE_COUNT
	);

	console.log(`Sending appreciation probe from ${SENDER_NAME} <${SENDER_EMAIL}>`);
	console.log(`Subject: ${subject}\n`);

	for (const to of TEST_RECIPIENTS) {
		try {
			const { data, error } = await resend.emails.send({
				from: `${SENDER_NAME} <${SENDER_EMAIL}>`,
				to,
				subject,
				html,
				text,
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
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
