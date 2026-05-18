<script lang="ts">
	import type { PageData } from './$types';
	import { resolve } from '$app/paths';

	interface Props {
		data: PageData;
	}

	let { data }: Props = $props();

	function formatDate(date: Date | null) {
		if (!date) return '—';
		return new Date(date).toLocaleDateString('en-US', {
			month: 'short',
			day: 'numeric',
			year: 'numeric',
			hour: 'numeric',
			minute: '2-digit'
		});
	}

	function formatDuration(start: Date, end: Date | null) {
		if (!end) return 'In progress...';
		const duration = (new Date(end).getTime() - new Date(start).getTime()) / 1000;
		return `${duration.toFixed(1)}s`;
	}
</script>

<main>
	<div class="header">
		<h1>Email Outreach</h1>
		<p class="subtitle">Queue status and send history</p>
	</div>

	<section class="stats-grid">
		<div class="stat-card">
			<span class="stat-value">{data.stats.pending}</span>
			<span class="stat-label">Pending</span>
		</div>
		<div class="stat-card sent">
			<span class="stat-value">{data.stats.sent}</span>
			<span class="stat-label">Sent</span>
		</div>
		<div class="stat-card failed">
			<span class="stat-value">{data.stats.failed}</span>
			<span class="stat-label">Failed</span>
		</div>
		<div class="stat-card bounced">
			<span class="stat-value">{data.stats.bounced}</span>
			<span class="stat-label">Bounced</span>
		</div>
		<div class="stat-card suppressed">
			<span class="stat-value">{data.stats.suppressed}</span>
			<span class="stat-label">Suppressed</span>
		</div>
		<div class="stat-card complained">
			<span class="stat-value">{data.stats.complained}</span>
			<span class="stat-label">Complained</span>
		</div>
	</section>

	<section class="logs-section">
		<h2>Recent Runs</h2>
		{#if data.logs.length === 0}
			<p class="empty">No email runs yet. Run <code>npm run email:send</code> to start.</p>
		{:else}
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>Started</th>
							<th>Duration</th>
							<th>Sent</th>
							<th>Failed</th>
							<th>Bounced</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody>
						{#each data.logs as log (log.id)}
							<tr>
								<td>{formatDate(log.run_started_at)}</td>
								<td>{formatDuration(log.run_started_at, log.run_completed_at)}</td>
								<td class="num">{log.total_sent}</td>
								<td class="num">{log.total_failed}</td>
								<td class="num">{log.total_bounced}</td>
								<td>
									<span class="status-badge {log.status}">{log.status}</span>
								</td>
							</tr>
						{/each}
					</tbody>
				</table>
			</div>
		{/if}
	</section>

	<section class="emails-section">
		<h2>Recent Emails</h2>
		{#if data.emails.length === 0}
			<p class="empty">No emails sent yet.</p>
		{:else}
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>Sent</th>
							<th>College</th>
							<th>Email</th>
							<th>Type</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody>
						{#each data.emails as email (email.id)}
							<tr>
								<td class="nowrap">{formatDate(email.sent_at)}</td>
								<td>
									<a
										href={resolve('/college/[college_domain]', {
											college_domain: email.college_domain
										})}
										target="_blank"
									>
										{email.college_name}
									</a>
								</td>
								<td class="email-cell">{email.email_address}</td>
								<td>
									<span class="type-badge {email.email_type}">{email.email_type}</span>
								</td>
								<td>
									<span class="status-badge {email.status}" title={email.error_message || ''}>
										{email.status}
									</span>
								</td>
							</tr>
						{/each}
					</tbody>
				</table>
			</div>
		{/if}
	</section>
</main>

<style lang="scss">
	main {
		background-color: #fbf5f2;
		min-height: 100vh;
		padding: 2rem clamp(1rem, 5vw, 4rem);
		color: #272838;
	}

	.header {
		max-width: 70rem;
		margin: 0 auto 2rem;

		h1 {
			margin: 0 0 0.25rem 0;
			font-size: 1.75rem;
			font-weight: 600;
		}

		.subtitle {
			margin: 0;
			color: #666;
		}
	}

	.stats-grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
		gap: 1rem;
		max-width: 70rem;
		margin: 0 auto 2.5rem;
	}

	.stat-card {
		background: white;
		border-radius: 0.75rem;
		padding: 1.25rem;
		text-align: center;
		border: 1px solid rgba(39, 40, 56, 0.1);

		.stat-value {
			display: block;
			font-size: 2rem;
			font-weight: 700;
			color: #272838;
		}

		.stat-label {
			font-size: 0.85rem;
			color: #666;
			text-transform: uppercase;
			letter-spacing: 0.03em;
		}

		&.sent .stat-value {
			color: #207040;
		}
		&.failed .stat-value {
			color: #a03030;
		}
		&.bounced .stat-value {
			color: #856404;
		}
		&.suppressed .stat-value,
		&.complained .stat-value {
			color: #7c2d12;
		}
	}

	section {
		max-width: 70rem;
		margin: 0 auto 2.5rem;

		h2 {
			font-size: 1.1rem;
			font-weight: 600;
			margin: 0 0 1rem 0;
		}
	}

	.empty {
		padding: 2rem;
		text-align: center;
		background: white;
		border-radius: 0.75rem;
		color: #666;

		code {
			background: rgba(39, 40, 56, 0.08);
			padding: 0.2rem 0.5rem;
			border-radius: 0.25rem;
			font-size: 0.9em;
		}
	}

	.table-wrapper {
		background: white;
		border-radius: 0.75rem;
		border: 1px solid rgba(39, 40, 56, 0.1);
		overflow-x: auto;
	}

	table {
		width: 100%;
		border-collapse: collapse;
		font-size: 0.9rem;

		th,
		td {
			padding: 0.75rem 1rem;
			text-align: left;
			border-bottom: 1px solid rgba(39, 40, 56, 0.08);
		}

		th {
			font-weight: 600;
			color: #666;
			font-size: 0.8rem;
			text-transform: uppercase;
			letter-spacing: 0.03em;
			background: rgba(39, 40, 56, 0.03);
		}

		tbody tr:last-child td {
			border-bottom: none;
		}

		.num {
			text-align: center;
			font-variant-numeric: tabular-nums;
		}

		.nowrap {
			white-space: nowrap;
		}

		.email-cell {
			max-width: 200px;
			overflow: hidden;
			text-overflow: ellipsis;
			white-space: nowrap;
		}

		a {
			color: #272838;
			text-decoration: none;

			&:hover {
				text-decoration: underline;
			}
		}
	}

	.status-badge,
	.type-badge {
		display: inline-block;
		padding: 0.2rem 0.5rem;
		border-radius: 0.25rem;
		font-size: 0.75rem;
		font-weight: 500;
		text-transform: capitalize;
	}

	.status-badge {
		&.completed,
		&.sent {
			background: rgba(50, 150, 80, 0.15);
			color: #207040;
		}
		&.running,
		&.pending {
			background: rgba(59, 130, 246, 0.15);
			color: #1d4ed8;
		}
		&.failed {
			background: rgba(200, 50, 50, 0.15);
			color: #a03030;
		}
		&.bounced,
		&.suppressed,
		&.complained {
			background: rgba(133, 100, 4, 0.15);
			color: #856404;
		}
	}

	.type-badge {
		&.outreach {
			background: rgba(59, 130, 246, 0.15);
			color: #1d4ed8;
		}
		&.appreciation {
			background: rgba(139, 92, 246, 0.15);
			color: #6d28d9;
		}
	}

	@media screen and (max-width: 600px) {
		.stats-grid {
			grid-template-columns: repeat(2, 1fr);
		}
	}
</style>
