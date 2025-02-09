<script lang="ts">
	import type { PageData } from './$types';
	import SearchBar from '$lib/components/SearchBar.svelte';

	interface Props {
		data: PageData;
	}

	let { data }: Props = $props();

	const { collegesByState } = data;

	let searchText = $state('');
	const filterByName = (searchText: string) => {
		if (!searchText) return collegesByState;

		return collegesByState.map(({ state, colleges }) => {
			const filteredColleges = colleges.filter(({ name }) => name.toLowerCase().includes(searchText.toLowerCase()));
			return filteredColleges.length ? { state, colleges: filteredColleges } : null;
		}).filter((x) => x !== null);
	};
	let collegesByStateFiltered = $derived(filterByName(searchText));

</script>

<main>
	<h1>College Advising Database for Undocumented Students</h1>


	<SearchBar bind:value={searchText} />
	{#if collegesByStateFiltered.length === 0}
		<p>No Colleges Match Your Search... :(</p>
		<!--		TODO: Add a button/link for students to suggest universities-->
	{/if}
	{#each collegesByStateFiltered as { state, colleges }}
		<h2>{state}</h2>
		{#each colleges as { domain, name }}
			<p>
				<a href={`/college/${domain}`}>
					{name}
				</a>
			</p>
		{/each}
	{/each}


</main>

<style lang="scss">


  main {
    padding: 1rem clamp(1rem, 10vw, 4rem);
  }
</style>

<!--{#each toShow.slice(0, 10) as { domain, name }}-->
<!--	<a href={`/college/${domain}`}>-->
<!--		<h3>{name}</h3>-->
<!--	</a>-->
<!--{/each}-->


<!--<input bind:value={queryParams.searchText} name="searchText" type="text">-->
<!--<label for="giveAid">Only show colleges that give aid</label>-->
<!--<input bind:checked={queryParams.giveAid} type="checkbox" id="giveAid" name="giveAid">-->
<!--<label for="state">State</label>-->
<!--<select bind:value={queryParams.state} name="state" id="state">-->
<!--	<option value="all">All</option>-->
<!--	{#each states as { name, code }}-->
<!--		<option value={code}>{name}</option>-->
<!--	{/each}-->
<!--</select>-->
<!--<h2>Colleges</h2>-->