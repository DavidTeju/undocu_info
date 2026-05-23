import type { PageServerLoad } from './$types';
import prisma from '$lib/prisma';
import { buildEligibleAddressesSql, getSentHistoryCutoff } from '$lib/server/eligibility';

export const load: PageServerLoad = async () => {
	const eligibleSql = buildEligibleAddressesSql(getSentHistoryCutoff());

	const [sendsByStatus, eligibleByTier, recentLogs, recentEmails] = await Promise.all([
		prisma.email_outreach_sends.groupBy({
			by: ['status'],
			_count: { _all: true }
		}),

		prisma.$queryRaw<Array<{ tier: number; n: bigint }>>`
			SELECT tier, COUNT(*)::bigint AS n FROM (${eligibleSql}) ranked
			GROUP BY tier
		`,

		prisma.email_outreach_log.findMany({
			orderBy: { run_started_at: 'desc' },
			take: 10
		}),

		prisma.email_outreach_sends.findMany({
			include: {
				colleges: {
					select: { name: true, domain: true }
				}
			},
			orderBy: { sent_at: 'desc' },
			take: 50
		})
	]);

	const statusCounts: Record<string, number> = {};
	for (const row of sendsByStatus) {
		statusCounts[row.status] = row._count._all;
	}

	const tierCounts: Record<number, number> = { 1: 0, 2: 0, 3: 0 };
	for (const row of eligibleByTier) {
		tierCounts[row.tier] = Number(row.n);
	}
	const totalEligible = tierCounts[1] + tierCounts[2] + tierCounts[3];

	return {
		stats: {
			sent: statusCounts.sent ?? 0,
			failed: statusCounts.failed ?? 0,
			bounced: statusCounts.bounced ?? 0,
			suppressed: statusCounts.suppressed ?? 0,
			complained: statusCounts.complained ?? 0
		},
		eligible: {
			total: totalEligible,
			tier1: tierCounts[1],
			tier2: tierCounts[2],
			tier3: tierCounts[3]
		},
		logs: recentLogs.map((log) => ({
			id: log.id.toString(),
			run_started_at: log.run_started_at,
			run_completed_at: log.run_completed_at,
			total_queued: log.total_queued,
			total_sent: log.total_sent,
			total_failed: log.total_failed,
			total_bounced: log.total_bounced,
			status: log.status
		})),
		emails: recentEmails.map((email) => ({
			id: email.id.toString(),
			email_address: email.email_address,
			email_type: email.email_type,
			status: email.status,
			sent_at: email.sent_at,
			error_message: email.error_message,
			college_name: email.colleges.name,
			college_domain: email.colleges.domain
		}))
	};
};
