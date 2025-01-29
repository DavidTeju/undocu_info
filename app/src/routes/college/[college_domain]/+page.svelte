<script lang="ts">
	import question_categories from '$lib/question_categories.json';
	import type { PageData } from './$types';
	import { validEmailRegex, validUrlRegex } from '$lib/utils';

	interface Props {
		data: PageData;
	}

	let { data }: Props = $props();

	const { college, domain } = data;

	function linkify(text: string) {
		const validLink = new RegExp('(' + validEmailRegex.source + ')|(' + validUrlRegex.source + ')', 'g');
		return text.replace(validLink, (url) =>
			`<a href="${url}" target="_blank" rel="noopener noreferrer">${url}</a>`
		);
	}

</script>

<div class="page-wrapper">
	<main
		style="background-image: url('http://127.0.0.1:54321/storage/v1/object/public/campuses/{domain}/0'), url('/generic_campus/0.webp');">
		<!--	<img src={} alt={`Campus of ${college.name}`}>-->
		<div class="main-container">
			<div class="content">
				<h1>{college.name}</h1>
				<p>{college?.city}, {college.state}</p>
				<a href="https://{domain}.edu">https://{domain}.edu</a>
				<a href="/college/{domain}/edit" target="_blank">Suggest edit</a>

				<!--{#snippet Response(responseText)}-->
				<!--	-->
				<!--{/snippet}-->

				{#each Object.entries(college.responses) as [category, responses]}
					<!--{#if question_categories[category]}-->
					<h3>{question_categories[category]}</h3>
					<ul>
						{#each responses as { questions: { question: questionText }, response: responseText }}
							<li>
								<span class="question">{questionText}</span>:
								{@html linkify(responseText)}
							</li>
						{/each}
					</ul>
					<!--{/if}-->
				{/each}
			</div>

		</div>

	</main>

</div>

<style lang="scss">

  .page-wrapper {
    //background-color: darken(#FBF5F2, 1%);
    //background-color: darken(#FBF5F2, 90%);
    //border: solid 1px black;
    margin: 0 1rem 1rem;
    background-color: #FBF5F2;
    word-break: break-word;
    //background-color: black;

    font-family: "Roboto", serif;
    font-optical-sizing: auto;
    //font-weight: < weight>;
    font-style: normal;
    line-height: 1.5rem;
    font-variation-settings: "wdth" 100;
    color: #272838
  }

  .question {
    font-weight: 500;
  }

  li {
    margin-bottom: .5rem;
  }

  main {
    margin: auto;
    max-width: 60rem;
    //border: solid 1px black;
    background-size: 100% auto;
    background-repeat: repeat-y;
    min-height: 100vh;
    display: flex;
    flex-direction: column;

    //  background-position: bottom;
    //  height: 30vh;
    //  width: 100%;
    //background: url({gey}) no-repeat center center fixed;
  }

  .main-container {
    margin-top: 30vh;
    min-height: 70vh;
    background-color: #FBF5F2;
    padding: 0 10% 3rem 5%;
  }

  .content {
    position: relative;
    top: -2rem;
  }

  h1 {
    padding: 1rem;
    margin: 0 0 0 -1rem;
    border-radius: 1rem;
    display: inline-block;
    background-color: #FBF5F2;
  }
</style>
