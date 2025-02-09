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
	<p class="saying">Because
		Every Student Deserves an Education :)</p>


	<SearchBar bind:value={searchText} />
	{#if collegesByStateFiltered.length === 0}
		<p>No Colleges Match Your Search... :(</p>
		<!--		TODO: Add a button/link for students to suggest universities-->
	{:else }
		{@const numColleges = collegesByStateFiltered.flatMap(({ colleges }) => colleges).length}
		<p class="num-colleges"> {numColleges} College{numColleges > 1 ? "s" : ""} Found!
		</p>
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

    .num-colleges {
      font-size: .75rem;
      font-style: italic;
      margin-top: -.5rem;
      margin-left: .5rem;
    }
  }

  .saying {
    margin-top: -1rem;
    margin-left: .25rem;
    margin-bottom: 2rem;
    font-size: .75rem;
    font-style: italic;
  }
</style>