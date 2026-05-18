import type { PageServerLoad } from './$types';
import prisma from '$lib/prisma';

export const load: PageServerLoad = async () => {
	const [queueStats, recentLogs, recentEmails] = await Promise.all([
		// Queue statistics
		Promise.all([
			prisma.email_outreach_queue.count({ where: { status: 'pending' } }),
			prisma.email_outreach_queue.count({ where: { status: 'sent' } }),
			prisma.email_outreach_queue.count({ where: { status: 'failed' } }),
			prisma.email_outreach_queue.count({ where: { status: 'bounced' } }),
			prisma.email_outreach_queue.count({ where: { status: 'suppressed' } }),
			prisma.email_outreach_queue.count({ where: { status: 'complained' } })
		]),

		// Recent run logs
		prisma.email_outreach_log.findMany({
			orderBy: { run_started_at: 'desc' },
			take: 10
		}),

		// Recent individual emails
		prisma.email_outreach_queue.findMany({
			where: {
				status: { in: ['sent', 'failed', 'bounced', 'suppressed', 'complained'] }
			},
			include: {
				colleges: {
					select: { name: true, domain: true }
				}
			},
			orderBy: { sent_at: 'desc' },
			take: 50
		})
	]);

	const [pending, sent, failed, bounced, suppressed, complained] = queueStats;

	return {
		stats: { pending, sent, failed, bounced, suppressed, complained },
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
