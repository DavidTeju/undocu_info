<script lang="ts">
	import question_categories from '$lib/question_categories.json';
	import Error from '$lib/components/Error.svelte';
	// import type { Session } from '@supabase/supabase-js';
	// import { supabase } from '$lib/supabaseClient';
	// import { validEmailRegex } from '$lib/utils';

	const MAX_RESPONSE_LENGTH = 5000;
	const PREVIEW_LENGTH = 150;

	let { data, form } = $props();
	const { questionsCategorized, collegeName } = data;

	// Track character counts for each textarea
	let charCounts: Record<string, number> = $state({});

	// Track which fields are expanded for editing
	let expandedFields: Record<string, boolean> = $state({});

	// Track which previews are expanded (read-only full view)
	let expandedPreviews: Record<string, boolean> = $state({});

	// Track edited values (separate from original response)
	let editedValues: Record<string, string> = $state({});

	function toggleField(fieldId: string, originalResponse: string | null) {
		if (!expandedFields[fieldId]) {
			// Opening - initialize edited value if not set
			if (!(fieldId in editedValues)) {
				editedValues[fieldId] = originalResponse ?? '';
			}
		}
		expandedFields[fieldId] = !expandedFields[fieldId];
	}

	function truncate(text: string | null, length: number): string {
		if (!text) return '';
		if (text.length <= length) return text;
		return text.slice(0, length).trim() + '...';
	}

	// let email = $state('');
	// let otp = $state('');
	//
	// let isValidEmail = $derived(validEmailRegex.test(email));
	// let otpSent = $state(false);

	// let session: Session | null = $state(null);
	// let isVerified = $derived(session !== null);
	const isVerified = true;

	// const verifyEmail = async () => {
	// 	const { error } = await supabase.auth.signInWithOtp({
	// 		email,
	// 		options: {
	// 			shouldCreateUser: true
	// 		}
	// 	});
	// 	if (error) {
	// 		console.error(error);
	// 		//TODO: handle this
	// 	} else {
	// 		otpSent = true;
	// 	}
	// };
	//
	// const verifyOtp = async () => {
	// 	const { data, error } = await supabase.auth.verifyOtp({ email, token: otp, type: 'email' });
	// 	if (error) {
	// 		console.error(error);
	// 		//TODO: handle this
	// 	} else {
	// 		session = data?.session;
	// 		otpSent = false;
	// 	}
	// };
</script>

<main>
	<div class="header">
		<h1>Suggest An Edit</h1>
		<p class="college-name">{collegeName}</p>
	</div>

	<!--	<p>To suggest edits, please confirm your email address. This can be used to verify your identity.-->
	<!--		If you work with the school in question, please use your work/.edu email address. I may contact you-->
	<!--		via email to verify the information you input</p>-->
	<!--{#if !isVerified}-->
	<!--	<label for="email">Email Address:</label>-->
	<!--	<input bind:value={email} type="email" id="email" name="email" required>-->
	<!--	<button disabled={!isValidEmail} onclick={verifyEmail}>Send one time pin</button>-->
	<!--	{#if otpSent}-->
	<!--		<label for="otp">One Time Pin:</label>-->
	<!--		<input bind:value={otp} type="text" id="otp" name="otp" required>-->
	<!--		<button disabled={otp.length !== 6} onclick={verifyOtp}>Verify</button>-->
	<!--	{/if}-->
	<!--{:else}-->
	<!--	<p>Verified!</p>-->
	<!--{/if}-->

	{#if !form?.success && form?.reason}
		<Error message={form.reason} />
	{/if}

	<form method="post">
		{#each Object.entries(question_categories) as [category, categoryText]}
			<section class="category" class:disabled={!isVerified}>
				<h2>{categoryText}</h2>
				{#if questionsCategorized[category]}
					{#each questionsCategorized[category] as { id, question, response }}
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
										oninput={(e) => charCounts[fieldId] = e.currentTarget.value.length}
									></textarea>
									<span class="char-count" class:near-limit={(charCounts[fieldId] ?? editedValues[fieldId]?.length ?? 0) > MAX_RESPONSE_LENGTH * 0.9}>
										{charCounts[fieldId] ?? editedValues[fieldId]?.length ?? 0} / {MAX_RESPONSE_LENGTH}
									</span>
								</div>
							{:else}
								{@const displayValue = editedValues[fieldId] ?? response}
								{@const hasDisplayContent = displayValue && displayValue.trim().length > 0}
								{@const isTruncated = displayValue && displayValue.length > PREVIEW_LENGTH}
								{@const remainingChars = displayValue ? displayValue.length - PREVIEW_LENGTH : 0}
								{@const isPreviewExpanded = expandedPreviews[fieldId]}
								{#if hasDisplayContent}
									<div class="preview-container" class:truncated={isTruncated && !isPreviewExpanded}>
										<p class="preview">{isPreviewExpanded ? displayValue : truncate(displayValue, PREVIEW_LENGTH)}</p>
										{#if isTruncated}
											<button
												type="button"
												class="more-indicator"
												onclick={() => expandedPreviews[fieldId] = !isPreviewExpanded}
											>
												{isPreviewExpanded ? 'Show less' : `+${remainingChars} more characters`}
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
			<button class="submit" type="submit">Submit Changes</button>
		</div>
	</form>
</main>

<style lang="scss">
  main {
    background-color: #FBF5F2;
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
      color: #FBF5F2;
    }

    &.editing {
      background-color: #272838;
      color: #FBF5F2;

      &:hover {
        background-color: #3a3b4d;
      }
    }
  }

  .preview-container {
    margin-top: 0.75rem;
    position: relative;

    &.truncated .preview {
      mask-image: linear-gradient(to bottom, black 60%, transparent 100%);
      -webkit-mask-image: linear-gradient(to bottom, black 60%, transparent 100%);
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
    color: #FBF5F2;
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
      background: linear-gradient(transparent, #FBF5F2 30%);
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
</style>