<script lang="ts">
	import type { PageData } from './$types';
	import SearchBar from '$lib/components/SearchBar.svelte';
	import Card from '$lib/components/Card.svelte';

	interface Props {
		data: PageData;
	}

	let { data }: Props = $props();

	const { collegesByState } = data;

	let searchText = $state('');
	const filterByName = (searchText: string) => {
		if (!searchText) return collegesByState;

		return collegesByState
			.map(({ state, colleges }) => {
				const filteredColleges = colleges.filter(({ name }) =>
					name.toLowerCase().includes(searchText.toLowerCase())
				);
				return filteredColleges.length ? { state, colleges: filteredColleges } : null;
			})
			.filter((x) => x !== null);
	};
	let collegesByStateFiltered = $derived(filterByName(searchText));
</script>

<main>
	<h1>College Advising Database for Undocumented Students</h1>
	<p class="saying">Because Every Student Deserves an Education :)</p>

	<div class="college-list">
		<SearchBar bind:value={searchText} />
		{#if collegesByStateFiltered.length === 0}
			<p>No Colleges Match Your Search... :(</p>
		{:else}
			{@const numColleges = collegesByStateFiltered.flatMap(({ colleges }) => colleges).length}
			<p class="num-colleges">{numColleges} College{numColleges > 1 ? 's' : ''} Found!</p>
		{/if}

		{#each collegesByStateFiltered as { state, colleges } (state)}
			<h2>{state}</h2>
			<div class="state-list">
				{#each colleges as college (college.id)}
					<Card {college}></Card>
				{/each}
			</div>
		{/each}
	</div>

	<p>
		For more state-by-state policies for public colleges, I recommend checking out: <a
			href="https://www.higheredimmigrationportal.org/">higheredimmigrationportal.org</a
		>
	</p>
	<!--	<p>Don't see a school you like? Help build this resource by <a href="">Requesting a School</a></p>-->
	<!--		TODO: Add a button/link for students to suggest universities-->
</main>

<style lang="scss">
	main {
		padding: 1rem clamp(1rem, 10vw, 4rem);

		.num-colleges {
			font-size: 0.75rem;
			font-style: italic;
			margin-top: -0.5rem;
			margin-left: 0.5rem;
		}

		.college-list {
			padding: 0 clamp(0rem, 5vw, 4rem);
		}
	}

	.saying {
		margin-top: -1rem;
		margin-left: 0.25rem;
		margin-bottom: 2rem;
		font-size: 0.75rem;
		font-style: italic;
	}

	.state-list {
		gap: 1rem;
		display: grid;
		grid-template-columns: repeat(auto-fill, minmax(20rem, 1fr));
	}
</style>
