<script lang="ts">
	import question_categories from '$lib/question_categories.json';
	import Error from '$lib/components/Error.svelte';
	// import type { Session } from '@supabase/supabase-js';
	// import { supabase } from '$lib/supabaseClient';
	// import { validEmailRegex } from '$lib/utils';

	const MAX_RESPONSE_LENGTH = 5000;

	let { data, form } = $props();
	const { questionsCategorized, collegeName } = data;

	// Track character counts for each textarea
	let charCounts: Record<string, number> = $state({});

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
	<h1>Suggest An Edit To {collegeName}</h1>
	<!--	<p>To suggest edits, please confirm your email address. This can be used to verify your identity.-->
	<!--		If you work with the school in question, please use your work/.edu email address. I may contact you-->
	<!--		via email to verify the information you input</p>-->
	<!--	<p>{email}</p>-->
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
			<fieldset disabled={!isVerified}>
				<legend>{categoryText}</legend>
				{#if questionsCategorized[category]}
					{#each questionsCategorized[category] as { id, question, response }}
						{@const fieldId = id.toString()}
						<label for={fieldId}>
							{question}
						</label>
						<div class="textarea-wrapper">
							<textarea
								name={fieldId}
								id={fieldId}
								placeholder="Nothing here..."
								maxlength={MAX_RESPONSE_LENGTH}
								oninput={(e) => charCounts[fieldId] = e.currentTarget.value.length}
							>{response}</textarea>
							<span class="char-count" class:near-limit={(charCounts[fieldId] ?? response?.length ?? 0) > MAX_RESPONSE_LENGTH * 0.9}>
								{charCounts[fieldId] ?? response?.length ?? 0} / {MAX_RESPONSE_LENGTH}
							</span>
						</div>
					{/each}
				{/if}
			</fieldset>
		{/each}
		<button class="submit" type="submit">Submit</button>
	</form>
</main>

<style lang="scss">
  main {
    padding: 1rem clamp(1rem, 15vw, 10rem);

    form {
      display: flex;
      flex-direction: column;

      .submit {
        padding: 0.5rem;
        align-self: center;
        width: 25%;
        border-radius: .4rem;
        background-color: transparent;
        border: solid 1px green;
        font-weight: bold;
        color: green;
        cursor: pointer;

        &:hover {
          background-color: rgba(0, 128, 0, 0.15);
          text-shadow: -.5px -.5px 0 rgba(39, 40, 56, 0.2), .5px -.5px 0 rgba(39, 40, 56, 0.2), -.5px .5px 0 rgba(39, 40, 56, 0.2), .5px .5px 0 rgba(39, 40, 56, 0.2);
        }
      }

      fieldset {
        margin-bottom: 1rem;
        padding: 1rem;

        legend {
          font-size: 1.5rem;
          font-weight: bold;
        }

        label {
          display: block;
          margin-bottom: 0.5rem;
        }

        .textarea-wrapper {
          position: relative;
          margin-bottom: 1rem;
        }

        textarea {
          width: 100%;
          field-sizing: content;
          min-height: 5rem;
          max-height: 12rem;
          line-height: 1.5;
          padding: 0.5rem 1rem;
          scroll-padding: 0.5rem;
          resize: vertical;
          border-radius: .3rem;
          background-color: rgba(255, 255, 255, 0.5);
        }

        .char-count {
          display: block;
          text-align: right;
          font-size: 0.75rem;
          color: #666;
          margin-top: 0.25rem;

          &.near-limit {
            color: #c00;
            font-weight: 500;
          }
        }
      }
    }
  }
</style>