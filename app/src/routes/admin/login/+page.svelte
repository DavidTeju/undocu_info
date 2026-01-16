<script lang="ts">
	import type { ActionData, PageData } from './$types';

	interface Props {
		data: PageData;
		form: ActionData;
	}

	let { data, form }: Props = $props();
</script>

<main>
	<div class="login-container">
		<h1>Admin Login</h1>

		{#if data?.unauthorized}
			<div class="unauthorized">
				<p>
					{#if data.userEmail}
						You're signed in as <strong>{data.userEmail}</strong>, but this account doesn't have
						admin access.
					{:else}
						You don't have admin access.
					{/if}
				</p>
				<form method="POST" action="?/signOut">
					<button type="submit" class="sign-out-btn">Sign out</button>
				</form>
			</div>
		{:else}
			{#if form?.error}
				<div class="error">
					{form.error}
				</div>
			{/if}

			<form method="POST" action="?/login">
				<div class="field">
					<label for="email">Email</label>
					<input
						type="email"
						id="email"
						name="email"
						value={form?.email ?? ''}
						required
						autocomplete="email"
					/>
				</div>

				<div class="field">
					<label for="password">Password</label>
					<input
						type="password"
						id="password"
						name="password"
						required
						autocomplete="current-password"
					/>
				</div>

				<button type="submit">Sign In</button>
			</form>
		{/if}
	</div>
</main>

<style lang="scss">
	main {
		display: flex;
		justify-content: center;
		align-items: center;
		min-height: 70vh;
		padding: 2rem;
	}

	.login-container {
		background-color: rgba(255, 255, 255, 0.9);
		border-radius: 0.75rem;
		border: 1px solid rgba(39, 40, 56, 0.15);
		padding: 2rem;
		width: 100%;
		max-width: 24rem;

		h1 {
			margin: 0 0 1.5rem 0;
			font-size: 1.5rem;
			font-weight: 600;
			text-align: center;
			color: #272838;
		}
	}

	.error {
		background-color: rgba(200, 50, 50, 0.15);
		color: #a03030;
		padding: 0.75rem 1rem;
		border-radius: 0.5rem;
		margin-bottom: 1rem;
		font-size: 0.9rem;
		text-align: center;
	}

	.unauthorized {
		text-align: center;

		p {
			margin: 0 0 1.5rem 0;
			color: #666;
			line-height: 1.5;
		}

		form {
			display: block;
		}

		.sign-out-btn {
			width: 100%;
			padding: 0.75rem 1rem;
			background-color: transparent;
			color: #a03030;
			border: 1px solid #a03030;
			border-radius: 0.5rem;
			font-size: 1rem;
			font-weight: 500;
			cursor: pointer;
			transition: all 0.15s ease;

			&:hover {
				background-color: rgba(200, 50, 50, 0.1);
			}
		}
	}

	form {
		display: flex;
		flex-direction: column;
		gap: 1rem;
	}

	.field {
		display: flex;
		flex-direction: column;
		gap: 0.375rem;

		label {
			font-size: 0.875rem;
			font-weight: 500;
			color: #272838;
		}

		input {
			padding: 0.625rem 0.75rem;
			border: 1px solid rgba(39, 40, 56, 0.2);
			border-radius: 0.5rem;
			font-size: 1rem;
			color: #272838;
			background-color: white;

			&:focus {
				outline: none;
				border-color: #272838;
			}
		}
	}

	button {
		margin-top: 0.5rem;
		padding: 0.75rem 1rem;
		background-color: #272838;
		color: white;
		border: none;
		border-radius: 0.5rem;
		font-size: 1rem;
		font-weight: 500;
		cursor: pointer;
		transition: background-color 0.15s ease;

		&:hover {
			background-color: #1a1a26;
		}
	}
</style>
