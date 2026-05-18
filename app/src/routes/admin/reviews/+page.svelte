<script lang="ts">
	import type { PageData, ActionData } from './$types';
	import { enhance } from '$app/forms';
	import { resolve } from '$app/paths';

	interface Props {
		data: PageData;
		form: ActionData;
	}

	let { data, form }: Props = $props();

	function formatDate(date: Date) {
		return new Date(date).toLocaleDateString('en-US', {
			month: 'short',
			day: 'numeric',
			year: 'numeric',
			hour: 'numeric',
			minute: '2-digit'
		});
	}
</script>

<main>
	<div class="header">
		<h1>Review Suggestions</h1>
		<p class="subtitle">
			{data.suggestions.length} pending {data.suggestions.length === 1
				? 'suggestion'
				: 'suggestions'}
		</p>
	</div>

	{#if form?.success}
		<div class="toast success">
			Suggestion {form.action}!
		</div>
	{/if}

	{#if form?.error}
		<div class="toast error">
			{form.error}
		</div>
	{/if}

	{#if data.suggestions.length === 0}
		<div class="empty-state">
			<p>No pending suggestions to review.</p>
		</div>
	{:else}
		<div class="suggestions-list">
			{#each data.suggestions as suggestion (suggestion.id)}
				<article class="suggestion-card">
					<header class="suggestion-header">
						<div class="suggestion-meta">
							<h2>{suggestion.college_name}</h2>
							<a
								href={resolve('/college/[college_domain]', {
									college_domain: suggestion.college_domain
								})}
								target="_blank"
								class="domain-link"
							>
								{suggestion.college_domain}.edu
							</a>
						</div>
						<div class="submission-info">
							<time datetime={suggestion.created_at.toString()}>
								{formatDate(suggestion.created_at)}
							</time>
							{#if suggestion.submitter_email}
								<span class="submitter">by {suggestion.submitter_email}</span>
							{:else}
								<span class="submitter anonymous">anonymous</span>
							{/if}
						</div>
					</header>

					<div class="changes">
						{#each Object.entries(suggestion.content) as [questionId, change] (questionId)}
							{@const currentValue =
								data.currentResponseMap[`${suggestion.college_domain}-${questionId}`] ?? null}
							{@const dataChangedSinceProposal = currentValue !== change.oldResponse}
							<div class="change-item">
								<h3 class="question">{change.question}</h3>
								{#if currentValue && !change.response}
									<div class="delete-only">
										<span class="label">Delete</span>
										{#if dataChangedSinceProposal}
											<span class="stale-indicator" data-tooltip="Changed since proposal">
												<svg
													xmlns="http://www.w3.org/2000/svg"
													width="14"
													height="14"
													viewBox="0 0 24 24"
													fill="none"
													stroke="currentColor"
													stroke-width="2.5"
													stroke-linecap="round"
													stroke-linejoin="round"
													><circle cx="12" cy="12" r="10" /><line
														x1="12"
														y1="8"
														x2="12"
														y2="12"
													/><line x1="12" y1="16" x2="12.01" y2="16" /></svg
												>
											</span>
										{/if}
										<p>{currentValue}</p>
									</div>
								{:else if currentValue}
									<div class="diff">
										<div class="old">
											<span class="label">Current</span>
											{#if dataChangedSinceProposal}
												<span class="stale-indicator" data-tooltip="Changed since proposal">
													<svg
														xmlns="http://www.w3.org/2000/svg"
														width="14"
														height="14"
														viewBox="0 0 24 24"
														fill="none"
														stroke="currentColor"
														stroke-width="2.5"
														stroke-linecap="round"
														stroke-linejoin="round"
														><circle cx="12" cy="12" r="10" /><line
															x1="12"
															y1="8"
															x2="12"
															y2="12"
														/><line x1="12" y1="16" x2="12.01" y2="16" /></svg
													>
												</span>
											{/if}
											<p>{currentValue}</p>
										</div>
										<div class="arrow">→</div>
										<div class="new">
											<span class="label">Suggested</span>
											<p>{change.response}</p>
										</div>
									</div>
								{:else}
									<div class="new-only">
										<span class="label">New</span>
										<p>{change.response}</p>
									</div>
								{/if}
							</div>
						{/each}
					</div>

					{#if suggestion.remarks}
						<div class="remarks">
							<h4>Submitter's notes:</h4>
							<p>{suggestion.remarks}</p>
						</div>
					{/if}

					<footer class="suggestion-actions">
						<form method="POST" action="?/reject" use:enhance>
							<input type="hidden" name="suggestionId" value={suggestion.id} />
							<button type="submit" class="btn reject">Reject</button>
						</form>
						<form method="POST" action="?/approve" use:enhance>
							<input type="hidden" name="suggestionId" value={suggestion.id} />
							<button type="submit" class="btn approve">Approve</button>
						</form>
					</footer>
				</article>
			{/each}
		</div>
	{/if}
</main>

<style lang="scss">
	main {
		background-color: #fbf5f2;
		min-height: 100vh;
		padding: 2rem clamp(1rem, 5vw, 4rem);
		color: #272838;
	}

	.header {
		max-width: 60rem;
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

	.toast {
		max-width: 60rem;
		margin: 0 auto 1.5rem;
		padding: 0.75rem 1rem;
		border-radius: 0.5rem;
		font-weight: 500;
		text-align: center;

		&.success {
			background-color: rgba(50, 150, 80, 0.15);
			color: #207040;
		}

		&.error {
			background-color: rgba(200, 50, 50, 0.15);
			color: #a03030;
		}
	}

	.empty-state {
		max-width: 60rem;
		margin: 0 auto;
		padding: 4rem 2rem;
		text-align: center;
		background-color: rgba(255, 255, 255, 0.7);
		border-radius: 0.75rem;
		color: #666;
	}

	.suggestions-list {
		max-width: 60rem;
		margin: 0 auto;
		display: flex;
		flex-direction: column;
		gap: 1.5rem;
	}

	.suggestion-card {
		background-color: rgba(255, 255, 255, 0.9);
		border-radius: 0.75rem;
		border: 1px solid rgba(39, 40, 56, 0.15);
		overflow: hidden;
	}

	.suggestion-header {
		display: flex;
		justify-content: space-between;
		align-items: flex-start;
		padding: 1.25rem 1.5rem;
		border-bottom: 1px solid rgba(39, 40, 56, 0.1);
		gap: 1rem;

		h2 {
			margin: 0;
			font-size: 1.25rem;
			font-weight: 600;
		}

		.domain-link {
			font-size: 0.875rem;
			color: #666;
			text-decoration: none;

			&:hover {
				color: #272838;
				text-decoration: underline;
			}
		}

		.submission-info {
			display: flex;
			flex-direction: column;
			align-items: flex-end;
			gap: 0.25rem;
		}

		time {
			font-size: 0.8rem;
			color: #888;
			white-space: nowrap;
		}

		.submitter {
			font-size: 0.8rem;
			color: #666;

			&.anonymous {
				font-style: italic;
				color: #999;
			}
		}
	}

	.changes {
		padding: 1rem 1.5rem;
	}

	.change-item {
		padding: 1rem 0;
		border-bottom: 1px solid rgba(39, 40, 56, 0.08);

		&:last-child {
			border-bottom: none;
		}
	}

	.question {
		margin: 0 0 0.75rem 0;
		font-size: 0.95rem;
		font-weight: 600;
		color: #272838;
	}

	.label {
		display: inline-block;
		padding: 0.2rem 0.5rem;
		border-radius: 0.25rem;
		font-size: 0.7rem;
		font-weight: 600;
		text-transform: uppercase;
		letter-spacing: 0.025em;
		margin-bottom: 0.5rem;
	}

	.diff {
		display: grid;
		grid-template-columns: 1fr auto 1fr;
		gap: 1rem;
		align-items: start;

		.old {
			padding-right: 0.25rem;

			.label {
				background-color: rgba(200, 160, 60, 0.18);
				color: #8b6914;
			}
		}

		.new {
			padding-right: 1rem;

			.label {
				background-color: rgba(50, 150, 80, 0.15);
				color: #207040;
			}
		}

		.arrow {
			color: #888;
			font-size: 1.25rem;
			padding-top: 1.5rem;
		}

		p {
			margin: 0;
			font-size: 0.9rem;
			line-height: 1.5;
			color: #444;
			white-space: pre-wrap;
			word-break: break-word;
		}
	}

	.new-only {
		.label {
			background-color: rgba(50, 150, 80, 0.15);
			color: #207040;
		}

		p {
			margin: 0;
			font-size: 0.9rem;
			line-height: 1.5;
			color: #444;
			white-space: pre-wrap;
		}
	}

	.delete-only {
		.label {
			background-color: rgba(200, 50, 50, 0.15);
			color: #a03030;
		}

		p {
			margin: 0;
			font-size: 0.9rem;
			line-height: 1.5;
			color: #444;
			white-space: pre-wrap;
			text-decoration: line-through;
			opacity: 0.7;
		}
	}

	.stale-indicator {
		position: relative;
		display: inline-flex;
		align-items: center;
		justify-content: center;
		margin-left: 0.4rem;
		padding: 0.2rem;
		background-color: rgba(200, 50, 50, 0.15);
		border-radius: 0.25rem;
		color: #a03030;
		cursor: help;
		vertical-align: middle;

		&::after {
			content: attr(data-tooltip);
			position: absolute;
			bottom: calc(100% + 4px);
			left: 50%;
			transform: translateX(-50%);
			padding: 0.35rem 0.5rem;
			background: #333;
			color: #fff;
			font-size: 0.7rem;
			font-weight: 400;
			white-space: nowrap;
			border-radius: 0.25rem;
			opacity: 0;
			visibility: hidden;
			transition: opacity 0.15s;
			pointer-events: none;
		}

		&:hover::after {
			opacity: 1;
			visibility: visible;
		}
	}

	.remarks {
		margin: 0 1.5rem 1.5rem;
		padding: 1rem 1.25rem;
		background: linear-gradient(135deg, rgba(107, 91, 79, 0.08) 0%, rgba(107, 91, 79, 0.03) 100%);
		border-radius: 0.75rem;
		border: 1px solid rgba(107, 91, 79, 0.12);

		h4 {
			margin: 0 0 0.5rem 0;
			font-size: 0.75rem;
			font-weight: 600;
			color: #6b5b4f;
			text-transform: uppercase;
			letter-spacing: 0.04em;
		}

		p {
			margin: 0;
			font-size: 0.9rem;
			line-height: 1.6;
			color: #4a3f36;
			white-space: pre-wrap;
		}
	}

	.suggestion-actions {
		display: flex;
		justify-content: flex-end;
		gap: 0.75rem;
		padding: 1rem 1.5rem;
		background-color: rgba(39, 40, 56, 0.03);
		border-top: 1px solid rgba(39, 40, 56, 0.1);

		form {
			display: contents;
		}
	}

	.btn {
		padding: 0.625rem 1.5rem;
		border-radius: 0.5rem;
		font-size: 0.9rem;
		font-weight: 500;
		cursor: pointer;
		transition: all 0.15s ease;

		&.reject {
			border: 1px solid #a03030;
			background-color: transparent;
			color: #a03030;

			&:hover {
				background-color: rgba(200, 50, 50, 0.1);
			}
		}

		&.approve {
			border: none;
			background-color: #207040;
			color: white;

			&:hover {
				background-color: #185a32;
			}
		}
	}

	@media screen and (max-width: 600px) {
		.suggestion-header {
			flex-direction: column;
			gap: 0.5rem;

			.submission-info {
				align-items: flex-start;
			}
		}

		.diff {
			grid-template-columns: 1fr;
			gap: 0.75rem;

			.arrow {
				display: none;
			}
		}

		.suggestion-actions {
			flex-direction: column;

			.btn {
				width: 100%;
			}
		}
	}
</style>
