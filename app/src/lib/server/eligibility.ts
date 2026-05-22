import { Prisma } from '@prisma/client';

export const SENT_HISTORY_WINDOW_DAYS = 365;

export const TIER_1_STATUSES = ['safe', 'role_account'] as const;
export const TIER_2_STATUSES = ['catch_all', 'inbox_full'] as const;
export const PERMANENT_FAILURE_STATUSES = [
	'bounced',
	'suppressed',
	'complained',
	'failed'
] as const;

export function getSentHistoryCutoff(now: Date = new Date()): Date {
	return new Date(now.getTime() - SENT_HISTORY_WINDOW_DAYS * 24 * 60 * 60 * 1000);
}

/**
 * SELECT-fragment that produces eligible (college_id, email_address, tier, score)
 * rows. Used by both the send-time candidate picker and the eligibility-by-tier
 * counts on the admin page. Keep these consumers reading the same fragment so
 * tier definitions and suppression rules never drift apart.
 */
export function buildEligibleAddressesSql(sinceWindow: Date): Prisma.Sql {
	return Prisma.sql`
		SELECT
			e.collegeid AS college_id,
			e.emailaddress AS email_address,
			CASE
				WHEN e.verification_status IN (${Prisma.join([...TIER_1_STATUSES])}) THEN 1
				WHEN e.verification_status IN (${Prisma.join([...TIER_2_STATUSES])}) THEN 2
				ELSE 3
			END AS tier,
			COALESCE(e.verification_score, 0) AS score
		FROM emailaddresses e
		JOIN colleges c ON c.id = e.collegeid
		WHERE (c.hidden IS NULL OR c.hidden = false)
			AND NOT EXISTS (
				SELECT 1 FROM email_outreach_suppression s
				WHERE s.college_id = e.collegeid
					AND s.email_address = e.emailaddress
			)
			AND NOT EXISTS (
				SELECT 1 FROM email_outreach_sends r
				WHERE r.college_id = e.collegeid
					AND r.email_address = e.emailaddress
					AND (
						(r.status = 'sent' AND r.sent_at > ${sinceWindow})
						OR r.status IN (${Prisma.join([...PERMANENT_FAILURE_STATUSES])})
					)
			)
	`;
}
