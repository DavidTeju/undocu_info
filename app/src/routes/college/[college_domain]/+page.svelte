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

<main
	style="background-image: url('http://127.0.0.1:54321/storage/v1/object/public/campuses/{domain}/0'), url('http://127.0.0.1:54321/storage/v1/object/public/campuses/generic1.webp');">
	<!--	<img src={} alt={`Campus of ${college.name}`}>-->
	<div class="main-container">
		<div class="content">
			<h1>{college.name}</h1>
			<div class="subheading">
				<p>{college?.city}, {college.state}</p>
				<a href="https://{domain}.edu">https://{domain}.edu</a>
				<a href="/college/{domain}/edit" target="_blank">Suggest edit</a>
			</div>

			{#each Object.entries(college.responses) as [category, responses]}
				<h3>{question_categories[category]}</h3>
				<ul>
					{#each responses as { questions: { question: questionText }, response: responseText }}
						{#if questionText !== "Gives aid?"}
							<!--TODO: Make a plan for this (gives aid)-->
							<li>
								<span class="question">{questionText}</span>:
								{@html linkify(responseText)}
							</li>
						{/if}
					{/each}
				</ul>
			{/each}
		</div>

	</div>

</main>

<style lang="scss">

  .question {
    font-weight: 500;
  }

  li {
    margin-bottom: .5rem;
  }

  main {
    margin: auto;
    max-width: 60rem;
    background-size: 100% auto;
    background-repeat: repeat-y;
    min-height: 100vh;
    display: flex;
    flex-direction: column;

    opacity: 0;
    visibility: hidden;
    animation: fadeIn .7s ease forwards;  }

  @keyframes fadeIn {
    0% {
      opacity: 0;
      visibility: hidden;
    }
		75%{
			opacity: 0;
		}
    100% {
      opacity: 1;
      visibility: visible;
    }
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

  .subheading {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: start;

    :last-child {
      margin-left: auto;
    }

    p {
      margin: 0;
    }
  }

</style>
