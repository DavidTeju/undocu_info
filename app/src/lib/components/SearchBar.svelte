<script lang="ts">
	let { value = $bindable() }: { value: string } = $props();
</script>

<div>
	<svg
		class="search-icon"
		fill="none"
		height="24"
		stroke="currentColor"
		stroke-linecap="round"
		stroke-linejoin="round"
		stroke-width="2"
		viewBox="0 0 24 24"
		width="24"
		xmlns="http://www.w3.org/2000/svg"
	>
		<circle cx="11" cy="11" r="8" />
		<path d="m21 21-4.3-4.3" />
	</svg>
	<input bind:value type="text" class="search" placeholder="Search for a University" />
</div>

<style lang="scss">
	.search {
		width: 100%;
		padding: 0.5rem 2.25rem 0.5rem 0.5rem;
		border: 1px solid #ccc;
		border-radius: 0.25rem;
		height: 100%;
		background-color: rgba(255, 255, 255, 0.5);
	}

	.search-icon {
		position: absolute;
		right: 0.5rem;
		margin: auto 0;
		height: 100%;
	}

	div {
		position: relative;
		width: 30%;
		min-width: 15rem;
		margin-bottom: 1rem;
		height: 2.5rem;
	}
</style>
