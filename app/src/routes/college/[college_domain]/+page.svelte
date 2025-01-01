<script lang="ts">
	// let { data } = ();
	import type { School } from '$lib';
	import schools from '$lib/college_data.json';
	import question_categories from '$lib/question_categories.json';
	import type { PageData } from './$types';
	import prisma from '$lib/prisma';

	export let data: PageData;

	const { college, domain } = data;
</script>


<h1>{college.name}</h1>
<h2>{college?.city}, {college.state}</h2>
<a href="https://{domain}.edu">https://{domain}.edu</a>
<a href="college/{domain}/edit" target="_blank">Suggest edit</a>

{#each Object.entries(college.responses) as [category, responses]}
	<h3>{question_categories[category]}</h3>
	<ul>
		{#each responses as { questions: { question: questionText }, response: responseText }}
			<li>
				<strong>{questionText}</strong>: {responseText}
			</li>
		{/each}
	</ul>
{/each}