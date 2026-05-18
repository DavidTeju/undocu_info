import type { WebhookEventPayload } from 'resend';
import { describe, expect, it, vi } from 'vitest';
import {
	getPermanentSuppressionReason,
	handleResendWebhookEvent,
	type ResendWebhookResult
} from './resendWebhook';

type QueueRow = {
	id: bigint;
	college_id: number;
	email_address: string;
	resend_email_id: string | null;
};

function createEmailData(overrides: Partial<WebhookEventPayload['data']> = {}) {
	return {
		created_at: '2026-05-18T00:00:00.000Z',
		email_id: 'email_123',
		from: 'UndocuStudent <hello@example.org>',
		to: ['aid@example.edu'],
		subject: 'Hello',
		...overrides
	};
}

function createDb(rows: QueueRow[]) {
	const findMany = vi.fn(async (args: { where: Record<string, unknown> }) => {
		if ('resend_email_id' in args.where) {
			return rows
				.filter((row) => row.resend_email_id === args.where.resend_email_id)
				.map(({ id, college_id, email_address }) => ({ id, college_id, email_address }));
		}

		if ('email_address' in args.where) {
			const emailFilter = args.where.email_address;
			const emailAddress =
				typeof emailFilter === 'string' ? emailFilter : (emailFilter as { equals: string }).equals;
			return rows
				.filter((row) => row.email_address.toLowerCase() === emailAddress.toLowerCase())
				.map(({ id, college_id, email_address }) => ({ id, college_id, email_address }));
		}

		return [];
	});
	const updateMany = vi.fn(async () => ({ count: 1 }));
	const upsert = vi.fn(async (args: { create: unknown }) => args.create);

	return {
		db: {
			email_outreach_queue: { findMany, updateMany },
			email_outreach_suppression: { upsert }
		} as unknown as Parameters<typeof handleResendWebhookEvent>[1],
		findMany,
		updateMany,
		upsert
	};
}

async function handle(event: WebhookEventPayload, rows: QueueRow[]): Promise<ResendWebhookResult> {
	const { db } = createDb(rows);
	return handleResendWebhookEvent(event, db);
}

describe('Resend webhook handling', () => {
	it('marks permanent bounces and upserts suppression by Resend email id', async () => {
		const event = {
			type: 'email.bounced',
			created_at: '2026-05-18T00:00:00.000Z',
			data: {
				...createEmailData(),
				bounce: { message: 'Mailbox not found', subType: 'General', type: 'Permanent' }
			}
		} satisfies WebhookEventPayload;
		const { db, updateMany, upsert } = createDb([
			{ id: 1n, college_id: 42, email_address: 'aid@example.edu', resend_email_id: 'email_123' }
		]);

		const result = await handleResendWebhookEvent(event, db);

		expect(result).toMatchObject({
			handled: true,
			status: 'bounced',
			matchType: 'resend_email_id',
			matchedQueueIds: ['1'],
			suppressedCount: 1
		});
		expect(updateMany).toHaveBeenCalledWith(
			expect.objectContaining({
				data: expect.objectContaining({ status: 'bounced' })
			})
		);
		expect(upsert).toHaveBeenCalledWith(
			expect.objectContaining({
				where: {
					college_id_email_address: { college_id: 42, email_address: 'aid@example.edu' }
				},
				create: expect.objectContaining({ reason: 'bounced' })
			})
		);
	});

	it('does not permanently suppress explicitly temporary bounces', async () => {
		const event = {
			type: 'email.bounced',
			created_at: '2026-05-18T00:00:00.000Z',
			data: {
				...createEmailData(),
				bounce: { message: 'Mailbox full', subType: 'MailboxFull', type: 'Temporary' }
			}
		} satisfies WebhookEventPayload;
		const { db, updateMany, upsert } = createDb([
			{ id: 1n, college_id: 42, email_address: 'aid@example.edu', resend_email_id: 'email_123' }
		]);

		const result = await handleResendWebhookEvent(event, db);

		expect(getPermanentSuppressionReason(event)).toBeNull();
		expect(result.status).toBe('failed');
		expect(result.suppressedCount).toBe(0);
		expect(updateMany).toHaveBeenCalledWith(
			expect.objectContaining({
				data: expect.objectContaining({ status: 'failed' })
			})
		);
		expect(upsert).not.toHaveBeenCalled();
	});

	it('falls back by recipient only when the address maps to one college', async () => {
		const event = {
			type: 'email.suppressed',
			created_at: '2026-05-18T00:00:00.000Z',
			data: {
				...createEmailData({ email_id: 'unknown_email' }),
				suppressed: { message: 'Suppressed from prior bounce', type: 'bounced' }
			}
		} satisfies WebhookEventPayload;
		const result = await handle(event, [
			{ id: 2n, college_id: 42, email_address: 'aid@example.edu', resend_email_id: 'email_old' }
		]);

		expect(result).toMatchObject({
			status: 'suppressed',
			matchType: 'recipient_single_college',
			matchedQueueIds: ['2'],
			suppressedCount: 1
		});
	});

	it('does not guess by recipient when multiple colleges share an address', async () => {
		const event = {
			type: 'email.complained',
			created_at: '2026-05-18T00:00:00.000Z',
			data: createEmailData({ email_id: 'unknown_email' })
		} satisfies WebhookEventPayload;
		const { db, updateMany, upsert } = createDb([
			{ id: 2n, college_id: 42, email_address: 'aid@example.edu', resend_email_id: 'email_old' },
			{ id: 3n, college_id: 99, email_address: 'aid@example.edu', resend_email_id: 'email_other' }
		]);

		const result = await handleResendWebhookEvent(event, db);

		expect(result).toMatchObject({
			status: 'complained',
			matchType: 'ambiguous_recipient',
			matchedQueueIds: [],
			suppressedCount: 0
		});
		expect(updateMany).not.toHaveBeenCalled();
		expect(upsert).not.toHaveBeenCalled();
	});

	it('records email.failed without creating suppression', async () => {
		const event = {
			type: 'email.failed',
			created_at: '2026-05-18T00:00:00.000Z',
			data: {
				...createEmailData(),
				failed: { reason: 'Daily quota exceeded' }
			}
		} satisfies WebhookEventPayload;
		const { db, updateMany, upsert } = createDb([
			{ id: 1n, college_id: 42, email_address: 'aid@example.edu', resend_email_id: 'email_123' }
		]);

		const result = await handleResendWebhookEvent(event, db);

		expect(result.status).toBe('failed');
		expect(result.suppressedCount).toBe(0);
		expect(updateMany).toHaveBeenCalled();
		expect(upsert).not.toHaveBeenCalled();
	});
});
