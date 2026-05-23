import type { Prisma, PrismaClient } from '@prisma/client';
import type { WebhookEventPayload } from 'resend';
import { normalizeOptionalEmail } from './normalizeEmail';

type EmailSendRow = {
	id: bigint;
	college_id: number;
	email_address: string;
};

type EmailWebhookDb = Pick<PrismaClient, 'email_outreach_sends' | 'email_outreach_suppression'>;

type PermanentSuppressionReason = 'bounced' | 'suppressed' | 'complained';
type SendsWebhookStatus = PermanentSuppressionReason | 'failed';
type MatchType = 'resend_email_id' | 'recipient_single_college' | 'none' | 'ambiguous_recipient';

const PERMANENT_SEND_STATUSES: PermanentSuppressionReason[] = [
	'bounced',
	'suppressed',
	'complained'
];

export interface ResendWebhookResult {
	handled: boolean;
	status?: SendsWebhookStatus;
	matchType?: MatchType;
	matchedSendIds: string[];
	suppressedCount: number;
	message?: string;
}

function isRecord(value: unknown): value is Record<string, unknown> {
	return typeof value === 'object' && value !== null;
}

function hasEmailData(
	event: WebhookEventPayload
): event is Extract<WebhookEventPayload, { data: { email_id: string; to: string[] } }> {
	return (
		isRecord(event.data) && typeof event.data.email_id === 'string' && Array.isArray(event.data.to)
	);
}

function toPrismaJson(event: WebhookEventPayload): Prisma.InputJsonValue {
	return JSON.parse(JSON.stringify(event)) as Prisma.InputJsonValue;
}

export function getPermanentSuppressionReason(
	event: WebhookEventPayload
): PermanentSuppressionReason | null {
	switch (event.type) {
		case 'email.bounced': {
			const bounceType = event.data.bounce.type.trim().toLowerCase();
			return bounceType === 'temporary' || bounceType === 'transient' ? null : 'bounced';
		}
		case 'email.suppressed':
			return 'suppressed';
		case 'email.complained':
			return 'complained';
		default:
			return null;
	}
}

export function getQueueStatusForWebhook(event: WebhookEventPayload): SendsWebhookStatus | null {
	const permanentReason = getPermanentSuppressionReason(event);
	if (permanentReason) return permanentReason;
	if (event.type === 'email.bounced' || event.type === 'email.failed') return 'failed';
	return null;
}

export function formatWebhookQueueError(event: WebhookEventPayload): string {
	switch (event.type) {
		case 'email.bounced':
			return [
				'Resend webhook email.bounced',
				event.data.bounce.type,
				event.data.bounce.subType,
				event.data.bounce.message
			]
				.filter(Boolean)
				.join(': ');
		case 'email.suppressed':
			return [
				'Resend webhook email.suppressed',
				event.data.suppressed.type,
				event.data.suppressed.message
			]
				.filter(Boolean)
				.join(': ');
		case 'email.complained':
			return 'Resend webhook email.complained: recipient reported the message as spam';
		case 'email.failed':
			return `Resend webhook email.failed: ${event.data.failed.reason}`;
		default:
			return `Resend webhook ${event.type}`;
	}
}

async function findQueueRowsForEvent(
	event: WebhookEventPayload,
	db: EmailWebhookDb
): Promise<{ matchType: MatchType; rows: EmailSendRow[] }> {
	if (!hasEmailData(event)) {
		return { matchType: 'none', rows: [] };
	}

	const rowsByResendId = await db.email_outreach_sends.findMany({
		where: { resend_email_id: event.data.email_id },
		select: { id: true, college_id: true, email_address: true }
	});

	if (rowsByResendId.length > 0) {
		return { matchType: 'resend_email_id', rows: rowsByResendId };
	}

	const recipient = normalizeOptionalEmail(event.data.to[0]);
	if (!recipient) {
		return { matchType: 'none', rows: [] };
	}

	const recipientRows = await db.email_outreach_sends.findMany({
		where: { email_address: recipient },
		select: { id: true, college_id: true, email_address: true },
		orderBy: { created_at: 'desc' },
		take: 10
	});

	if (recipientRows.length === 0) {
		return { matchType: 'none', rows: [] };
	}

	const collegeIds = new Set(recipientRows.map((row) => row.college_id));
	if (collegeIds.size > 1) {
		return { matchType: 'ambiguous_recipient', rows: [] };
	}

	// Fallback by recipient is intentionally limited to one college. If the same
	// address appears for multiple colleges, we avoid guessing and require email_id.
	return { matchType: 'recipient_single_college', rows: [recipientRows[0]] };
}

export async function handleResendWebhookEvent(
	event: WebhookEventPayload,
	db: EmailWebhookDb
): Promise<ResendWebhookResult> {
	const status = getQueueStatusForWebhook(event);
	if (!status) {
		return {
			handled: false,
			matchedSendIds: [],
			suppressedCount: 0,
			message: 'ignored event type'
		};
	}

	const { matchType, rows } = await findQueueRowsForEvent(event, db);
	if (rows.length === 0) {
		return {
			handled: true,
			status,
			matchType,
			matchedSendIds: [],
			suppressedCount: 0,
			message:
				matchType === 'ambiguous_recipient'
					? 'recipient matched multiple colleges; skipped without email_id match'
					: 'no matching queue row'
		};
	}

	const errorMessage = formatWebhookQueueError(event);
	const permanentReason = getPermanentSuppressionReason(event);
	const eventDetails = toPrismaJson(event);
	const updateWhere =
		status === 'failed'
			? { id: { in: rows.map((row) => row.id) }, status: { notIn: PERMANENT_SEND_STATUSES } }
			: { id: { in: rows.map((row) => row.id) } };

	await db.email_outreach_sends.updateMany({
		where: updateWhere,
		data: { status, error_message: errorMessage }
	});

	if (permanentReason) {
		await Promise.all(
			rows.map((row) =>
				db.email_outreach_suppression.upsert({
					where: {
						college_id_email_address: {
							college_id: row.college_id,
							email_address: row.email_address
						}
					},
					create: {
						college_id: row.college_id,
						email_address: row.email_address,
						reason: permanentReason,
						source_event_type: event.type,
						resend_email_id: hasEmailData(event) ? event.data.email_id : null,
						details: eventDetails
					},
					update: {
						reason: permanentReason,
						source_event_type: event.type,
						resend_email_id: hasEmailData(event) ? event.data.email_id : null,
						details: eventDetails
					}
				})
			)
		);
	}

	return {
		handled: true,
		status,
		matchType,
		matchedSendIds: rows.map((row) => row.id.toString()),
		suppressedCount: permanentReason ? rows.length : 0
	};
}
