<script lang="ts">
	let { message }: { message: string } = $props();
</script>

<p>{message}</p>

<style>
	p {
		background-color: rgba(248, 215, 217, 0.64);
		padding: 0.5rem;
		border-radius: 0.5rem;
		border: solid #721c23 1px;
		color: #721c23;
		display: inline-block;
	}
</style>
