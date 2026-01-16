<script lang="ts">
	/**
	 * ChangeCard - Displays a single change/diff for review or confirmation
	 * Used in both admin review page and edit confirmation modal
	 */

	interface Props {
		/** The question/field being changed */
		question: string;
		/** Original value (null if new entry) */
		oldValue: string | null;
		/** New value (null or empty if deleting) */
		newValue: string | null;
		/** Visual variant: 'card' has border/background, 'inline' is minimal */
		variant?: 'card' | 'inline';
		/** Labels to show for old/new values */
		labels?: { old: string; new: string };
	}

	let {
		question,
		oldValue,
		newValue,
		variant = 'card',
		labels = { old: 'Current', new: 'Suggested' }
	}: Props = $props();

	const isDelete = !!oldValue && !newValue;
	const isNew = !oldValue && !!newValue;
	const isDiff = !!oldValue && !!newValue;
</script>

<div class="change-card {variant}" class:delete-card={isDelete}>
	<h3 class="question">{question}</h3>

	{#if isDelete}
		<div class="delete-only">
			<span class="label delete">Delete</span>
			<p class="value deleted">{oldValue}</p>
		</div>
	{:else if isNew}
		<div class="new-only">
			<span class="label new">{labels.new}</span>
			<p class="value">{newValue}</p>
		</div>
	{:else if isDiff}
		<div class="diff">
			<div class="old">
				<span class="label delete">{labels.old}</span>
				<p class="value">{oldValue}</p>
			</div>
			<div class="arrow">→</div>
			<div class="new">
				<span class="label new">{labels.new}</span>
				<p class="value">{newValue}</p>
			</div>
		</div>
	{/if}
</div>

<style lang="scss">
	.change-card {
		&.card {
			background-color: rgba(255, 255, 255, 0.8);
			border-radius: 0.75rem;
			padding: 1rem;
			margin-bottom: 1rem;
			border: 1px solid rgba(39, 40, 56, 0.1);

			&:last-child {
				margin-bottom: 0;
			}

			&.delete-card {
				border-color: rgba(200, 50, 50, 0.3);
				background-color: rgba(200, 50, 50, 0.05);
			}
		}

		&.inline {
			padding: 1rem 0;
			border-bottom: 1px solid rgba(39, 40, 56, 0.08);

			&:last-child {
				border-bottom: none;
			}
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

		&.delete {
			background-color: rgba(200, 50, 50, 0.15);
			color: #a03030;
		}

		&.new {
			background-color: rgba(50, 150, 80, 0.15);
			color: #207040;
		}
	}

	.value {
		margin: 0;
		font-size: 0.9rem;
		line-height: 1.5;
		color: #444;
		white-space: pre-wrap;
		word-break: break-word;

		&.deleted {
			text-decoration: line-through;
			color: #a03030;
			opacity: 0.7;
		}
	}

	.diff {
		display: grid;
		grid-template-columns: 1fr auto 1fr;
		gap: 1rem;
		align-items: start;

		.old {
			padding-left: 0;
			padding-right: 0.25rem;
		}

		.new {
			// Right column gets more right padding to account for text wrap
			padding-left: 0;
			padding-right: 1rem;
		}

		.arrow {
			color: #888;
			font-size: 1.25rem;
			padding-top: 1.5rem;
		}
	}

	.new-only,
	.delete-only {
		padding-right: 1rem;
	}

	@media screen and (max-width: 600px) {
		.diff {
			grid-template-columns: 1fr;
			gap: 0.75rem;

			.arrow {
				display: none;
			}

			.new {
				padding-right: 0;
			}
		}
	}
</style>
