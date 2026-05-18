<script lang="ts">
	import type { LayoutData } from './$types';
	import type { Snippet } from 'svelte';

	interface Props {
		data: LayoutData;
		children: Snippet;
	}

	let { data, children }: Props = $props();
</script>

{#if data.session && data.pathname !== '/admin/login'}
	<div class="admin-bar">
		<span class="user-email">{data.user?.email}</span>
		<form method="POST" action="/admin/logout">
			<button type="submit">Logout</button>
		</form>
	</div>
{/if}

{@render children()}

<style lang="scss">
	.admin-bar {
		display: flex;
		justify-content: flex-end;
		align-items: center;
		gap: 1rem;
		padding: 0.75rem 1.5rem;
		border-bottom: 1px dashed rgba(39, 40, 56, 0.2);
		color: #272838;
		font-size: 0.875rem;

		.user-email {
			color: #666;
		}

		form {
			display: contents;
		}

		button {
			padding: 0.375rem 0.75rem;
			background-color: transparent;
			border: 1px solid rgba(39, 40, 56, 0.3);
			border-radius: 0.375rem;
			color: #272838;
			font-size: 0.8rem;
			cursor: pointer;
			transition: all 0.15s ease;

			&:hover {
				background-color: rgba(39, 40, 56, 0.05);
				border-color: rgba(39, 40, 56, 0.5);
			}
		}
	}
</style>
