<script lang="ts">
	import question_categories from '$lib/question_categories.json';
	import Error from '$lib/components/Error.svelte';
	import { enhance } from '$app/forms';
	import { emailValidationRegex } from '$lib/utils';

	const MAX_RESPONSE_LENGTH = 5000;

	let { data, form } = $props();
	const { questionsCategorized, collegeName, userEmail, tokenParam } = data;

	// Auth state from form responses
	$effect(() => {
		if (form?.otpSent) {
			otpSent = true;
			if (form.email) email = form.email;
		}
		if (form?.verified && form.verifiedEmail) {
			verifiedEmail = form.verifiedEmail;
			otpSent = false;
		}
		if (form?.authError) {
			authError = form.authError;
		}
	});

	// Track character counts for each textarea
	let charCounts: Record<string, number> = $state({});

	// Track which fields are expanded for editing
	let expandedFields: Record<string, boolean> = $state({});

	// Track which previews are expanded (read-only full view)
	let expandedPreviews: Record<string, boolean> = $state({});

	// Track which previews actually overflow and need "Show more"
	let overflowingPreviews: Record<string, boolean> = $state({});

	function checkOverflowAction(node: HTMLElement, initialParams: { fieldId: string }) {
		let params = initialParams;

		// Check overflow after the element is mounted and styled
		const check = () => {
			overflowingPreviews[params.fieldId] = node.scrollHeight > node.clientHeight;
		};

		// Use requestAnimationFrame to ensure styles are applied
		requestAnimationFrame(check);

		return {
			update(newParams: { fieldId: string }) {
				params = newParams;
				requestAnimationFrame(check);
			}
		};
	}

	// Track edited values (separate from original response)
	let editedValues: Record<string, string> = $state({});

	// Confirmation modal state
	let showConfirmModal = $state(false);
	let formElement: HTMLFormElement;
	let remarks = $state('');

	// Build a map of question id -> question text for easy lookup
	const questionMap: Record<string, string> = {};
	const originalResponses: Record<string, string | null> = {};
	for (const questions of Object.values(questionsCategorized)) {
		if (questions) {
			for (const q of questions) {
				questionMap[q.id.toString()] = q.question;
				originalResponses[q.id.toString()] = q.response;
			}
		}
	}

	// Compute changes for the modal
	type Change = {
		fieldId: string;
		question: string;
		oldValue: string | null;
		newValue: string;
		isNew: boolean;
		isDelete: boolean;
	};

	function getChanges(): Change[] {
		const changes: Change[] = [];
		for (const [fieldId, newValue] of Object.entries(editedValues)) {
			const oldValue = originalResponses[fieldId];
			const trimmedNew = newValue.trim();
			const trimmedOld = oldValue?.trim() ?? '';

			// Include if there's a real change: new content, modified content, or deletion
			if (trimmedNew !== trimmedOld) {
				const isDelete = trimmedOld.length > 0 && trimmedNew.length === 0;
				const isNew = trimmedOld.length === 0 && trimmedNew.length > 0;

				// Only include if it's a meaningful change (not empty -> empty)
				if (trimmedNew.length > 0 || isDelete) {
					changes.push({
						fieldId,
						question: questionMap[fieldId] ?? 'Unknown question',
						oldValue: oldValue || null,
						newValue: trimmedNew,
						isNew,
						isDelete
					});
				}
			}
		}
		return changes;
	}

	function handleReviewClick(e: Event) {
		e.preventDefault();
		showConfirmModal = true;
	}

	function confirmSubmit() {
		showConfirmModal = false;
		formElement.requestSubmit();
	}

	function toggleField(fieldId: string, originalResponse: string | null) {
		if (!expandedFields[fieldId]) {
			// Opening - initialize edited value if not set
			if (!(fieldId in editedValues)) {
				editedValues[fieldId] = originalResponse ?? '';
			}
		}
		expandedFields[fieldId] = !expandedFields[fieldId];
	}

	// Auth state - check if already authenticated from server
	let email = $state('');
	let otp = $state('');
	let otpSent = $state(false);
	let authError = $state('');
	let authLoading = $state(false);

	let isValidEmail = $derived(emailValidationRegex.test(email));

	// Track verified email - either from server (existing session) or from OTP verification
	let verifiedEmail: string | null = $state(userEmail);
	let isVerified = $derived(verifiedEmail !== null);

	const resetAuth = () => {
		otpSent = false;
		otp = '';
		authError = '';
	};
</script>

<svelte:head>
	<meta name="referrer" content="same-origin" />
</svelte:head>

<main>
	<div class="header">
		<h1>Suggest An Edit</h1>
		<p class="college-name">{collegeName}</p>
	</div>

	{#if isVerified}
		<div class="auth-section verified">
			<p class="auth-verified">
				Verified as <strong>{verifiedEmail}</strong>
			</p>
			<button
				type="button"
				class="auth-btn secondary small"
				onclick={() => {
					verifiedEmail = null;
				}}
			>
				Use different email
			</button>
		</div>
	{:else}
		<div class="auth-section">
			<p class="auth-intro">
				To suggest edits, please verify your email address. This helps us maintain data quality. If
				you work with the school, please use your work/.edu email.
			</p>

			{#if authError}
				<div class="auth-error">{authError}</div>
			{/if}

			{#if !otpSent}
				<form
					method="POST"
					action="?/sendOtp"
					class="auth-form"
					use:enhance={() => {
						authLoading = true;
						authError = '';
						return async ({ update }) => {
							authLoading = false;
							await update();
						};
					}}
				>
					<label for="email">Email Address</label>
					<input
						bind:value={email}
						type="email"
						id="email"
						name="email"
						placeholder="your@email.com"
						disabled={authLoading}
					/>
					<button type="submit" class="auth-btn" disabled={!isValidEmail || authLoading}>
						{authLoading ? 'Sending...' : 'Send verification code'}
					</button>
				</form>
			{:else}
				<form
					method="POST"
					action="?/verifyOtp"
					class="auth-form"
					use:enhance={() => {
						authLoading = true;
						authError = '';
						return async ({ update }) => {
							authLoading = false;
							await update();
						};
					}}
				>
					<p class="otp-sent-msg">We sent a 6-digit code to <strong>{email}</strong></p>
					<input type="hidden" name="email" value={email} />
					<label for="otp">Verification Code</label>
					<input
						bind:value={otp}
						type="text"
						id="otp"
						name="otp"
						placeholder="000000"
						maxlength="6"
						disabled={authLoading}
					/>
					<div class="auth-actions">
						<button
							type="button"
							class="auth-btn secondary"
							onclick={resetAuth}
							disabled={authLoading}
						>
							Change email
						</button>
						<button type="submit" class="auth-btn" disabled={otp.length !== 6 || authLoading}>
							{authLoading ? 'Verifying...' : 'Verify'}
						</button>
					</div>
				</form>
			{/if}
		</div>
	{/if}

	{#if !form?.success && form?.reason}
		<Error message={form.reason} />
	{/if}

	<form method="post" action="?/submit" bind:this={formElement}>
		{#if tokenParam}
			<input type="hidden" name="t" value={tokenParam} />
		{/if}
		<input type="hidden" name="remarks" value={remarks} />

		<section class="notes-section" class:disabled={!isVerified}>
			<h2>Notes</h2>
			<p class="notes-description">
				Have a comment, question, or want to report an issue? Add it here.
			</p>
			<textarea
				bind:value={remarks}
				placeholder="Optional: 'This link is broken', 'Information seems outdated', etc."
				rows="2"
				disabled={!isVerified}
			></textarea>
		</section>

		{#each Object.entries(question_categories) as [category, categoryText] (category)}
			<section class="category" class:disabled={!isVerified}>
				<h2>{categoryText}</h2>
				{#if questionsCategorized[category]}
					{#each questionsCategorized[category] as { id, question, response } (id)}
						{@const fieldId = id.toString()}
						{@const isExpanded = expandedFields[fieldId]}
						{@const currentValue = editedValues[fieldId] ?? response}
						{@const hasContent = currentValue && currentValue.trim().length > 0}

						<div class="field-card" class:has-content={hasContent}>
							<div class="field-header">
								<span class="question-text">{question}</span>
								<button
									type="button"
									class="toggle-btn"
									class:editing={isExpanded}
									onclick={() => toggleField(fieldId, response)}
								>
									{#if isExpanded}
										Done
									{:else if hasContent}
										Edit
									{:else}
										Add
									{/if}
								</button>
							</div>

							{#if isExpanded}
								<div class="field-edit">
									<textarea
										name={fieldId}
										id={fieldId}
										placeholder="Enter information..."
										maxlength={MAX_RESPONSE_LENGTH}
										bind:value={editedValues[fieldId]}
										oninput={(e) => (charCounts[fieldId] = e.currentTarget.value.length)}
									></textarea>
									<span
										class="char-count"
										class:near-limit={(charCounts[fieldId] ?? editedValues[fieldId]?.length ?? 0) >
											MAX_RESPONSE_LENGTH * 0.9}
									>
										{charCounts[fieldId] ?? editedValues[fieldId]?.length ?? 0} / {MAX_RESPONSE_LENGTH}
									</span>
								</div>
							{:else}
								{@const displayValue = editedValues[fieldId] ?? response}
								{@const hasDisplayContent = displayValue && displayValue.trim().length > 0}
								{@const isPreviewExpanded = expandedPreviews[fieldId]}
								{@const hasOverflow = overflowingPreviews[fieldId] ?? true}
								{@const overflowChecked = fieldId in overflowingPreviews}
								{#if hasDisplayContent}
									<div
										class="preview-container"
										class:collapsed={!isPreviewExpanded}
										class:truncated={!isPreviewExpanded && hasOverflow && overflowChecked}
									>
										<p class="preview" use:checkOverflowAction={{ fieldId }}>{displayValue}</p>
										{#if hasOverflow}
											<button
												type="button"
												class="more-indicator"
												onclick={() => (expandedPreviews[fieldId] = !isPreviewExpanded)}
											>
												{isPreviewExpanded ? 'Show less' : 'Show more'}
											</button>
										{/if}
									</div>
								{/if}
								<!-- Hidden input to submit the current value -->
								{#if fieldId in editedValues}
									<input type="hidden" name={fieldId} value={editedValues[fieldId]} />
								{:else if response}
									<input type="hidden" name={fieldId} value={response} />
								{/if}
							{/if}
						</div>
					{/each}
				{/if}
			</section>
		{/each}

		<div class="submit-container">
			<button class="submit" type="button" onclick={handleReviewClick}>Review Changes</button>
		</div>
	</form>
</main>

<!-- Confirmation Modal -->
{#if showConfirmModal}
	{@const changes = getChanges()}
	{@const hasRemarks = remarks.trim().length > 0}
	{@const hasContent = changes.length > 0 || hasRemarks}
	<div
		class="modal-backdrop"
		role="button"
		tabindex="-1"
		onclick={() => (showConfirmModal = false)}
		onkeydown={(e) => e.key === 'Escape' && (showConfirmModal = false)}
	>
		<!-- svelte-ignore a11y_no_noninteractive_element_interactions -->
		<div
			class="modal"
			role="dialog"
			aria-modal="true"
			aria-labelledby="modal-title"
			onclick={(e) => e.stopPropagation()}
			onkeydown={(e) => e.stopPropagation()}
		>
			<div class="modal-header">
				<h2 id="modal-title">
					{#if !hasContent}
						Nothing to Submit
					{:else if changes.length > 0 && hasRemarks}
						Review Your Submission
					{:else if changes.length > 0}
						Review Your Changes
					{:else}
						Review Your Note
					{/if}
				</h2>
				{#if changes.length > 0}
					<p>
						{changes.length}
						{changes.length === 1 ? 'change' : 'changes'}{hasRemarks ? ' + note' : ''}
					</p>
				{:else if hasRemarks}
					<p>Note only (no field changes)</p>
				{/if}
			</div>

			<div class="modal-body">
				{#if !hasContent}
					<div class="no-changes">
						<p>You haven't made any changes or added any notes yet.</p>
						<p>Edit a field or add a note to submit feedback.</p>
					</div>
				{:else}
					{#if changes.length > 0}
						{#each changes as change (change.fieldId)}
							<div class="change-card" class:delete-card={change.isDelete}>
								<h3 class="change-question">{change.question}</h3>
								{#if change.isDelete}
									<div class="change-delete">
										<span class="change-label delete">Delete</span>
										<p class="change-value deleted">{change.oldValue}</p>
									</div>
								{:else if change.isNew}
									<div class="change-new">
										<span class="change-label new">New</span>
										<p class="change-value">{change.newValue}</p>
									</div>
								{:else}
									<div class="change-diff">
										<div class="change-old">
											<span class="change-label old">Before</span>
											<p class="change-value">{change.oldValue}</p>
										</div>
										<div class="change-arrow">→</div>
										<div class="change-new">
											<span class="change-label new">After</span>
											<p class="change-value">{change.newValue}</p>
										</div>
									</div>
								{/if}
							</div>
						{/each}
					{/if}

					{#if hasRemarks}
						<div class="remarks-display" class:standalone={changes.length === 0}>
							<div class="remarks-header">
								<svg
									xmlns="http://www.w3.org/2000/svg"
									width="16"
									height="16"
									viewBox="0 0 24 24"
									fill="none"
									stroke="currentColor"
									stroke-width="2"
									stroke-linecap="round"
									stroke-linejoin="round"
								>
									<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z" />
								</svg>
								<span>Your Note</span>
							</div>
							<p class="remarks-content">{remarks}</p>
						</div>
					{/if}
				{/if}
			</div>

			<div class="modal-footer">
				{#if hasContent}
					<button class="modal-btn secondary" onclick={() => (showConfirmModal = false)}>
						Back to Editing
					</button>
					<button class="modal-btn primary" onclick={confirmSubmit}> Confirm & Submit </button>
				{:else}
					<button class="modal-btn primary" onclick={() => (showConfirmModal = false)}>
						Go Back
					</button>
				{/if}
			</div>
		</div>
	</div>
{/if}

<style lang="scss">
	main {
		background-color: #fbf5f2;
		min-height: 100vh;
		padding: 2rem clamp(1rem, 5vw, 4rem);
		color: #272838;
	}

	.header {
		margin-bottom: 2rem;
		text-align: center;

		h1 {
			margin: 0 0 0.5rem 0;
			font-size: 1.75rem;
			font-weight: 600;
		}

		.college-name {
			margin: 0;
			font-size: 1.25rem;
			color: #555;
		}
	}

	// Auth section styles
	.auth-section {
		max-width: 28rem;
		margin: 0 auto 2rem;
		padding: 1.5rem;
		background-color: rgba(255, 255, 255, 0.9);
		border-radius: 0.75rem;
		border: 1px solid rgba(39, 40, 56, 0.15);

		&.verified {
			display: flex;
			align-items: center;
			justify-content: space-between;
			gap: 1rem;
			padding: 1rem 1.5rem;
			background-color: rgba(50, 150, 80, 0.08);
			border-color: rgba(50, 150, 80, 0.25);
		}
	}

	.auth-verified {
		margin: 0;
		font-size: 0.9rem;
		color: #207040;
	}

	.auth-intro {
		margin: 0 0 1.25rem 0;
		font-size: 0.9rem;
		color: #555;
		line-height: 1.5;
		text-align: center;
	}

	.auth-error {
		background-color: rgba(200, 50, 50, 0.1);
		color: #a03030;
		padding: 0.75rem 1rem;
		border-radius: 0.5rem;
		margin-bottom: 1rem;
		font-size: 0.875rem;
		text-align: center;
	}

	.auth-form {
		display: flex;
		flex-direction: column;
		gap: 0.75rem;

		label {
			font-weight: 500;
			font-size: 0.875rem;
		}

		input {
			padding: 0.75rem 1rem;
			border: 1px solid rgba(39, 40, 56, 0.2);
			border-radius: 0.5rem;
			font-size: 1rem;
			font-family: inherit;
			transition: border-color 0.15s ease;

			&:focus {
				outline: none;
				border-color: #272838;
			}

			&::placeholder {
				color: #999;
			}

			&:disabled {
				background-color: #f5f5f5;
				cursor: not-allowed;
			}
		}

		input#otp {
			text-align: center;
			font-size: 1.25rem;
			letter-spacing: 0.5em;
			font-family: monospace;
		}
	}

	.otp-sent-msg {
		margin: 0;
		font-size: 0.875rem;
		color: #555;
		text-align: center;
	}

	.auth-actions {
		display: flex;
		gap: 0.75rem;
		margin-top: 0.25rem;
	}

	.auth-btn {
		flex: 1;
		padding: 0.75rem 1.25rem;
		border-radius: 0.5rem;
		font-size: 0.9rem;
		font-weight: 500;
		cursor: pointer;
		transition: all 0.15s ease;
		border: none;
		background-color: #272838;
		color: #fbf5f2;

		&:hover:not(:disabled) {
			background-color: #3a3b4d;
		}

		&:disabled {
			opacity: 0.5;
			cursor: not-allowed;
		}

		&.secondary {
			background-color: transparent;
			border: 1px solid #272838;
			color: #272838;

			&:hover:not(:disabled) {
				background-color: rgba(39, 40, 56, 0.05);
			}
		}

		&.small {
			flex: none;
			padding: 0.5rem 0.75rem;
			font-size: 0.8rem;
		}
	}

	form {
		max-width: 50rem;
		margin: 0 auto;
	}

	.category {
		margin-bottom: 2rem;

		&.disabled {
			opacity: 0.6;
			pointer-events: none;
		}

		h2 {
			font-size: 1.25rem;
			font-weight: 600;
			margin: 0 0 1rem 0;
			padding-bottom: 0.5rem;
			border-bottom: 2px solid rgba(39, 40, 56, 0.1);
		}
	}

	.field-card {
		background-color: rgba(255, 255, 255, 0.65);
		border-radius: 0.75rem;
		padding: 1rem;
		margin-bottom: 0.75rem;
		box-shadow: 0 1px 3px rgba(0, 0, 0, 0.04);
		transition: all 0.2s ease;
		border: 1px dashed rgba(39, 40, 56, 0.15);

		&:hover {
			box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
			border-color: rgba(39, 40, 56, 0.25);
		}

		&.has-content {
			background-color: rgba(255, 255, 255, 0.9);
			border: 1px solid rgba(39, 40, 56, 0.2);
			box-shadow: 0 2px 6px rgba(0, 0, 0, 0.06);

			&:hover {
				box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
				border-color: rgba(39, 40, 56, 0.3);
			}
		}
	}

	.field-header {
		display: flex;
		justify-content: space-between;
		align-items: flex-start;
		gap: 1rem;
	}

	.question-text {
		font-weight: 500;
		flex: 1;
		line-height: 1.4;
	}

	.toggle-btn {
		flex-shrink: 0;
		padding: 0.375rem 0.875rem;
		border-radius: 0.375rem;
		border: 1px solid #272838;
		background-color: transparent;
		color: #272838;
		font-size: 0.875rem;
		font-weight: 500;
		cursor: pointer;
		transition: all 0.15s ease;

		&:hover {
			background-color: #272838;
			color: #fbf5f2;
		}

		&.editing {
			background-color: #272838;
			color: #fbf5f2;

			&:hover {
				background-color: #3a3b4d;
			}
		}
	}

	.preview-container {
		margin-top: 0.75rem;
		position: relative;

		&.collapsed .preview {
			max-height: 4.5em; // ~3 lines with 1.5 line-height
			overflow: hidden;
		}

		&.truncated .preview {
			mask-image: linear-gradient(to bottom, black 50%, transparent 100%);
			-webkit-mask-image: linear-gradient(to bottom, black 50%, transparent 100%);
		}
	}

	.preview {
		margin: 0;
		color: #444;
		font-size: 0.9rem;
		line-height: 1.5;
		white-space: pre-wrap;
	}

	.more-indicator {
		display: block;
		margin-top: 0.25rem;
		padding: 0;
		border: none;
		background: none;
		font-size: 0.8rem;
		color: #666;
		font-weight: 500;
		cursor: pointer;
		text-decoration: underline;
		text-decoration-color: transparent;
		transition: all 0.15s ease;

		&:hover {
			color: #272838;
			text-decoration-color: #272838;
		}
	}

	.field-edit {
		margin-top: 1rem;

		textarea {
			width: 100%;
			min-height: 6rem;
			field-sizing: content;
			padding: 0.75rem 1rem;
			border: 1px solid rgba(39, 40, 56, 0.2);
			border-radius: 0.5rem;
			background-color: #fff;
			font-family: inherit;
			font-size: 0.95rem;
			line-height: 1.5;
			resize: vertical;
			transition: border-color 0.15s ease;

			&:focus {
				outline: none;
				border-color: #272838;
			}

			&::placeholder {
				color: #999;
			}
		}

		.char-count {
			display: block;
			text-align: right;
			font-size: 0.75rem;
			color: #888;
			margin-top: 0.375rem;

			&.near-limit {
				color: #c00;
				font-weight: 500;
			}
		}
	}

	.submit-container {
		position: sticky;
		bottom: 1rem;
		display: flex;
		justify-content: center;
		padding: 1rem 0;
		margin-top: 1rem;
	}

	.submit {
		padding: 0.75rem 2rem;
		border-radius: 0.5rem;
		border: none;
		background-color: #272838;
		color: #fbf5f2;
		font-size: 1rem;
		font-weight: 600;
		cursor: pointer;
		box-shadow: 0 4px 12px rgba(39, 40, 56, 0.3);
		transition: all 0.15s ease;

		&:hover {
			background-color: #3a3b4d;
			transform: translateY(-1px);
			box-shadow: 0 6px 16px rgba(39, 40, 56, 0.35);
		}

		&:active {
			transform: translateY(0);
		}
	}

	// Mobile responsiveness
	@media screen and (max-width: 600px) {
		main {
			padding: 1rem;
		}

		.header h1 {
			font-size: 1.5rem;
		}

		.field-header {
			flex-direction: column;
			gap: 0.5rem;
		}

		.toggle-btn {
			align-self: flex-start;
		}

		.submit-container {
			position: fixed;
			bottom: 0;
			left: 0;
			right: 0;
			background: linear-gradient(transparent, #fbf5f2 30%);
			padding: 1.5rem 1rem 1rem;
			margin: 0;
		}

		.submit {
			width: 100%;
			max-width: 20rem;
		}

		// Add padding at bottom to prevent content being hidden by fixed button
		form {
			padding-bottom: 5rem;
		}
	}

	// Modal styles
	.modal-backdrop {
		position: fixed;
		inset: 0;
		background-color: rgba(0, 0, 0, 0.5);
		display: flex;
		align-items: center;
		justify-content: center;
		z-index: 100;
		padding: 1rem;
		backdrop-filter: blur(2px);
	}

	.modal {
		background-color: #fbf5f2;
		border-radius: 1rem;
		max-width: 40rem;
		width: 100%;
		max-height: 80vh;
		display: flex;
		flex-direction: column;
		box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
	}

	.modal-header {
		padding: 1.5rem 1.5rem 1rem;
		border-bottom: 1px solid rgba(39, 40, 56, 0.1);

		h2 {
			margin: 0 0 0.25rem 0;
			font-size: 1.5rem;
			font-weight: 600;
			color: #272838;
		}

		p {
			margin: 0;
			color: #666;
			font-size: 0.9rem;
		}
	}

	.modal-body {
		flex: 1;
		overflow-y: auto;
		padding: 1rem 1.5rem;
	}

	.no-changes {
		text-align: center;
		padding: 2rem 1rem;
		color: #666;

		p {
			margin: 0.5rem 0;

			&:first-child {
				font-size: 1rem;
				color: #444;
			}

			&:last-child {
				font-size: 0.875rem;
			}
		}
	}

	.change-card {
		background-color: rgba(255, 255, 255, 0.8);
		border-radius: 0.75rem;
		padding: 1rem;
		margin-bottom: 1rem;
		border: 1px solid rgba(39, 40, 56, 0.1);

		&:last-child {
			margin-bottom: 0;
		}
	}

	.change-question {
		margin: 0 0 0.75rem 0;
		font-size: 0.95rem;
		font-weight: 600;
		color: #272838;
	}

	.change-label {
		display: inline-block;
		padding: 0.2rem 0.5rem;
		border-radius: 0.25rem;
		font-size: 0.7rem;
		font-weight: 600;
		text-transform: uppercase;
		letter-spacing: 0.025em;
		margin-bottom: 0.5rem;

		&.old {
			background-color: rgba(200, 50, 50, 0.15);
			color: #a03030;
		}

		&.new {
			background-color: rgba(50, 150, 80, 0.15);
			color: #207040;
		}

		&.delete {
			background-color: rgba(200, 50, 50, 0.15);
			color: #a03030;
		}
	}

	.change-card.delete-card {
		border-color: rgba(200, 50, 50, 0.3);
		background-color: rgba(200, 50, 50, 0.05);
	}

	.remarks-display {
		margin-top: 1.5rem;
		padding: 1.25rem;
		background: linear-gradient(135deg, rgba(107, 91, 79, 0.08) 0%, rgba(107, 91, 79, 0.04) 100%);
		border-radius: 0.75rem;
		border: 1px solid rgba(107, 91, 79, 0.15);

		&.standalone {
			margin-top: 0;
			background: linear-gradient(135deg, rgba(107, 91, 79, 0.1) 0%, rgba(107, 91, 79, 0.05) 100%);
		}

		.remarks-header {
			display: flex;
			align-items: center;
			gap: 0.5rem;
			margin-bottom: 0.75rem;
			color: #6b5b4f;

			svg {
				opacity: 0.7;
			}

			span {
				font-size: 0.8rem;
				font-weight: 600;
				text-transform: uppercase;
				letter-spacing: 0.03em;
			}
		}

		.remarks-content {
			margin: 0;
			font-size: 0.95rem;
			line-height: 1.6;
			color: #444;
			white-space: pre-wrap;
		}
	}

	.change-value.deleted {
		text-decoration: line-through;
		color: #a03030;
	}

	.change-value {
		margin: 0;
		font-size: 0.9rem;
		line-height: 1.5;
		color: #444;
		white-space: pre-wrap;
		word-break: break-word;
	}

	.change-diff {
		display: grid;
		grid-template-columns: 1fr auto 1fr;
		gap: 0.75rem;
		align-items: start;
	}

	.change-old {
		min-width: 0;
		padding-right: 0.25rem;
	}

	.change-new {
		min-width: 0;
		padding-right: 1rem;
	}

	.change-arrow {
		color: #888;
		font-size: 1.25rem;
		padding-top: 1.5rem;
	}

	.notes-section {
		background-color: rgba(255, 255, 255, 0.7);
		border-radius: 0.75rem;
		padding: 1.5rem;
		margin-bottom: 1.5rem;

		h2 {
			margin: 0 0 0.5rem 0;
			font-size: 1.1rem;
		}

		.notes-description {
			margin: 0 0 0.75rem 0;
			font-size: 0.85rem;
			color: #666;
		}

		textarea {
			width: 100%;
			padding: 0.75rem;
			border: 1px solid rgba(39, 40, 56, 0.15);
			border-radius: 0.5rem;
			font-size: 0.9rem;
			font-family: inherit;
			resize: vertical;
			background-color: rgba(255, 255, 255, 0.8);

			&:focus {
				outline: none;
				border-color: #272838;
			}

			&::placeholder {
				color: #999;
			}

			&:disabled {
				background-color: rgba(0, 0, 0, 0.03);
				cursor: not-allowed;
			}
		}

		&.disabled {
			opacity: 0.6;
		}
	}

	.modal-footer {
		padding: 1rem 1.5rem 1.5rem;
		border-top: 1px solid rgba(39, 40, 56, 0.1);
		display: flex;
		gap: 0.75rem;
		justify-content: flex-end;
	}

	.modal-btn {
		padding: 0.625rem 1.25rem;
		border-radius: 0.5rem;
		font-size: 0.9rem;
		font-weight: 500;
		cursor: pointer;
		transition: all 0.15s ease;

		&.secondary {
			border: 1px solid #272838;
			background-color: transparent;
			color: #272838;

			&:hover {
				background-color: rgba(39, 40, 56, 0.05);
			}
		}

		&.primary {
			border: none;
			background-color: #272838;
			color: #fbf5f2;

			&:hover {
				background-color: #3a3b4d;
			}
		}
	}

	// Modal mobile responsiveness
	@media screen and (max-width: 600px) {
		.modal {
			max-height: 90vh;
		}

		.modal-header,
		.modal-body,
		.modal-footer {
			padding-left: 1rem;
			padding-right: 1rem;
		}

		.change-diff {
			grid-template-columns: 1fr;
			gap: 0.5rem;
		}

		.change-arrow {
			display: none;
		}

		.modal-footer {
			flex-direction: column-reverse;
		}

		.modal-btn {
			width: 100%;
			text-align: center;
		}
	}
</style>
