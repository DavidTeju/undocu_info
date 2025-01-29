<script lang="ts">
	import question_categories from '$lib/question_categories.json';
	import type { PageData } from './$types';
	import type { Session } from '@supabase/supabase-js';
	import { supabase } from '$lib/supabaseClient';
	import { validEmailRegex } from '$lib/utils';

	interface Props {
		data: PageData;
	}

	let { data }: Props = $props();
	const { questionsCategorized } = data;

	let email = $state('');
	let otp = $state('');

	let isValidEmail = $derived(validEmailRegex.test(email));
	let otpSent = $state(false);

	let session: Session | null = $state(null);
	let isVerified = $derived(session !== null);

	const verifyEmail = async () => {
		const { error } = await supabase.auth.signInWithOtp({
			email,
			options: {
				shouldCreateUser: true
			}
		});
		if (error) {
			console.error(error);
			//TODO: handle this
		} else {
			otpSent = true;
		}
	};

	const verifyOtp = async () => {
		const { data, error } = await supabase.auth.verifyOtp({ email, token: otp, type: 'email' });
		if (error) {
			console.error(error);
			//TODO: handle this
		} else {
			session = data?.session;
			otpSent = false;
		}
	};
</script>

<p>To suggest edits, please confirm your email address. This can be used to verify your identity.
	If you work with the school in question, please use your work/.edu email address. I may contact you
	via email to verify the information you input</p>
<p>{email}</p>
{#if !isVerified}
	<label for="email">Email Address:</label>
	<input bind:value={email} type="email" id="email" name="email" required>
	<button disabled={!isValidEmail} onclick={verifyEmail}>Send one time pin</button>
	{#if otpSent}
		<label for="otp">One Time Pin:</label>
		<input bind:value={otp} type="text" id="otp" name="otp" required>
		<button disabled={otp.length !== 6} onclick={verifyOtp}>Verify</button>
	{/if}
{:else}
	<p>Verified!</p>
{/if}

<form>
	{#each Object.entries(question_categories) as [category, categoryText]}
		<fieldset disabled={!isVerified}>
			<legend>{categoryText}</legend>
			{#if questionsCategorized[category]}
				{#each questionsCategorized[category] as { id, question, response }}
					<label for={id.toString()}>
						{question}
					</label>
					<textarea id="{id.toString()}">{response}</textarea>
				{/each}
			{/if}
		</fieldset>
	{/each}
	<button type="submit">Submit</button>
</form>