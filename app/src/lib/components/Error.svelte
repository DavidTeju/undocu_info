<script lang="ts">
	let { message }: { message: string } = $props();

</script>

<p>{message}</p>

<style>
    p {
        background-color: rgba(248, 215, 217, 0.64);
        padding: .5rem;
        border-radius: .5rem;
        border: solid #721C23 1px;
				color: #721C23;
        display: inline-block;
    }
</style>