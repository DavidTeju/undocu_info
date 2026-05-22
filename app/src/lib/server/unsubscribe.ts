import type { PrismaClient } from '@prisma/client';
import { normalizeEmail } from './normalizeEmail';

type UnsubscribeDb = Pick<PrismaClient, 'email_outreach_suppression'>;

/**
 * Record an unsubscribe by writing/updating the suppression row for this
 * (college, email) pair. The unified send command checks email_outreach_suppression
 * at eligibility time, so this is sufficient to prevent any future send.
 *
 * Historical email_outreach_sends rows are NOT modified — they represent what
 * actually happened, not the current consent state.
 */
export async function applyUserUnsubscribe(
	db: UnsubscribeDb,
	collegeId: number,
	email: string
): Promise<void> {
	const normalized = normalizeEmail(email);
	const data = { reason: 'unsubscribed', source_event_type: 'user_unsubscribe' };

	await db.email_outreach_suppression.upsert({
		where: {
			college_id_email_address: { college_id: collegeId, email_address: normalized }
		},
		create: { college_id: collegeId, email_address: normalized, ...data },
		update: data
	});
}
