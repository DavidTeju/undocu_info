<script lang="ts">
	import question_categories from '$lib/question_categories.json';
	import type { PageData } from './$types';
	import { validEmailRegex, validUrlRegex } from '$lib/utils';
	import { PUBLIC_FILES_ROOT } from '$env/static/public';

	interface Props {
		data: PageData;
	}

	let { data }: Props = $props();

	const { college, domain } = data;

	function linkify(text: string) {
		const escapeHtml = (str: string) =>
			str
				.replace(/&/g, '&amp;')
				.replace(/</g, '&lt;')
				.replace(/>/g, '&gt;')
				.replace(/"/g, '&quot;');

		// Store URLs/emails and replace with placeholders before escaping
		const links: Array<{ type: 'url' | 'email'; value: string }> = [];
		let processed = text
			.replaceAll(/["']/g, '"')
			.replace(validUrlRegex, (url) => {
				links.push({ type: 'url', value: url });
				return `\x00LINK${links.length - 1}\x00`;
			})
			.replace(validEmailRegex, (email) => {
				links.push({ type: 'email', value: email });
				return `\x00LINK${links.length - 1}\x00`;
			});

		// Escape HTML in the text (placeholders are safe)
		processed = escapeHtml(processed);

		// Replace placeholders with anchor tags
		return processed.replace(/\x00LINK(\d+)\x00/g, (_, i) => {
			const { type, value } = links[parseInt(i)];
			const escaped = escapeHtml(value);
			return type === 'url'
				? `<a href="${escaped}" target="_blank" rel="noopener noreferrer">${escaped}</a>`
				: `<a href="mailto:${escaped}" target="_blank" rel="noopener noreferrer">${escaped}</a>`;
		});
	}
</script>

<main
	style="background-image: url('{PUBLIC_FILES_ROOT}/storage/v1/render/image/public/campuses/{domain}/0?width=1000&height=750'), url('{PUBLIC_FILES_ROOT}/storage/v1/object/public/campuses/generic');"
>
	<!--	<img src={} alt={`Campus of ${college.name}`}>-->
	<div class="main-container">
		<div class="content">
			<h1>{college.name}</h1>
			<div class="subheading">
				{#if college?.city && college?.state}
					<p>{college?.city}, {college.state}</p>
				{/if}
				<a href="https://{domain}.edu">https://{domain}.edu</a>
				<a href="/college/{domain}/edit" class="suggest-edit">
					<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
						<path d="M12 20h9"/>
						<path d="M16.5 3.5a2.12 2.12 0 0 1 3 3L7 19l-4 1 1-4Z"/>
					</svg>
					Suggest an edit
				</a>
			</div>

			{#each Object.entries(college.responses) as [category, responses]}
				<h3>{question_categories[category as keyof typeof question_categories]}</h3>
				<ul>
					{#each responses as { questions: { question: questionText }, response: responseText }}
						{#if questionText !== "Gives aid?"}
							<!--TODO: Make a plan for this (gives aid)-->
							<li class="response">
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
		margin-bottom: 0.5rem;

		:global(p) {
			margin: 0.5rem 0;
		}
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
		animation: fadeIn 0.7s ease forwards;

		.response {
			white-space: pre-wrap;
		}
	}

	@keyframes fadeIn {
		0% {
			opacity: 0;
			visibility: hidden;
		}
		75% {
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
		background-color: #fbf5f2;
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
		background-color: #fbf5f2;
	}

	.subheading {
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		align-items: start;
		gap: 0.25rem;

		p {
			margin: 0;
		}
	}

	.suggest-edit {
		display: inline-flex;
		align-items: center;
		gap: 0.35rem;
		font-size: 0.75rem;
		font-weight: 500;
		color: #6b5b4f;
		background-color: #f5ebe4;
		border: 1px solid #0000000f;
		padding: 0.35rem 0.75rem;
		border-radius: 999px;
		text-decoration: none;
		transition: all 0.15s ease;
		margin-top: 0.5rem;

		svg {
			flex-shrink: 0;
			opacity: 0.7;
		}

		&:hover {
			background-color: #efe3d9;
			border-color: #00000018;
			color: #4a3f36;

			svg {
				opacity: 1;
			}
		}
	}
</style>
