<script lang="ts">
	import question_categories from '$lib/question_categories.json';
	import type { PageData } from './$types';
	import { resolve } from '$app/paths';
	import { linkify } from '$lib/linkify';
	import { PUBLIC_FILES_ROOT } from '$env/static/public';
	import { fly } from 'svelte/transition';

	interface Props {
		data: PageData;
	}

	let { data }: Props = $props();

	const { college, domain } = data;
	const emails = college.emails;

	let pillOpen = $state(false);
	let pillRef = $state<HTMLButtonElement>();
	let popoverRef = $state<HTMLDivElement>();
	let copiedEmail = $state<string | null>(null);
	let copyTimer: ReturnType<typeof setTimeout> | undefined;

	function copyEmail(email: string) {
		navigator.clipboard?.writeText(email);
		copiedEmail = email;
		clearTimeout(copyTimer);
		copyTimer = setTimeout(() => (copiedEmail = null), 1500);
	}

	$effect(() => {
		if (!pillOpen) return;

		function onClick(event: MouseEvent) {
			const target = event.target as Node;
			if (popoverRef?.contains(target) || pillRef?.contains(target)) return;
			pillOpen = false;
		}

		function onKey(event: KeyboardEvent) {
			if (event.key === 'Escape') {
				pillOpen = false;
				pillRef?.focus();
			}
		}

		window.addEventListener('mousedown', onClick);
		window.addEventListener('keydown', onKey);
		return () => {
			window.removeEventListener('mousedown', onClick);
			window.removeEventListener('keydown', onKey);
		};
	});
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

				<div class="subheading-actions">
					<a
						href={resolve('/college/[college_domain]/edit', { college_domain: domain })}
						class="pill suggest-edit"
					>
						<svg
							xmlns="http://www.w3.org/2000/svg"
							width="12"
							height="12"
							viewBox="0 0 24 24"
							fill="none"
							stroke="currentColor"
							stroke-width="2"
							stroke-linecap="round"
							stroke-linejoin="round"
						>
							<path d="M12 20h9" />
							<path d="M16.5 3.5a2.12 2.12 0 0 1 3 3L7 19l-4 1 1-4Z" />
						</svg>
						Suggest an edit
					</a>

					{#if emails.length > 0}
						<div class="pill-wrapper">
							<button
								type="button"
								class="pill emails-pill"
								class:open={pillOpen}
								aria-expanded={pillOpen}
								aria-controls="contact-emails-popover"
								bind:this={pillRef}
								onclick={() => (pillOpen = !pillOpen)}
							>
								<svg
									xmlns="http://www.w3.org/2000/svg"
									width="12"
									height="12"
									viewBox="0 0 24 24"
									fill="none"
									stroke="currentColor"
									stroke-width="2"
									stroke-linecap="round"
									stroke-linejoin="round"
								>
									<rect x="3" y="5" width="18" height="14" rx="2" />
									<path d="m3 7 9 6 9-6" />
								</svg>
								{emails.length} contact email{emails.length === 1 ? '' : 's'}
							</button>
							{#if pillOpen}
								<div
									bind:this={popoverRef}
									class="emails-popover"
									id="contact-emails-popover"
									role="dialog"
									transition:fly={{ y: -4, duration: 120 }}
								>
									<ul>
										{#each emails as email (email)}
											<li>
												<a href="mailto:{email}">{email}</a>
												<button
													type="button"
													class="copy-btn"
													onclick={() => copyEmail(email)}
													aria-label="Copy {email}"
												>
													{#if copiedEmail === email}
														<svg
															xmlns="http://www.w3.org/2000/svg"
															width="12"
															height="12"
															viewBox="0 0 24 24"
															fill="none"
															stroke="currentColor"
															stroke-width="2.5"
															stroke-linecap="round"
															stroke-linejoin="round"
														>
															<path d="M20 6 9 17l-5-5" />
														</svg>
													{:else}
														<svg
															xmlns="http://www.w3.org/2000/svg"
															width="12"
															height="12"
															viewBox="0 0 24 24"
															fill="none"
															stroke="currentColor"
															stroke-width="2"
															stroke-linecap="round"
															stroke-linejoin="round"
														>
															<rect x="9" y="9" width="13" height="13" rx="2" />
															<path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1" />
														</svg>
													{/if}
												</button>
											</li>
										{/each}
									</ul>
								</div>
							{/if}
						</div>
					{/if}
				</div>
			</div>

			{#each Object.entries(college.responses) as [category, responses] (category)}
				<h3>{question_categories[category as keyof typeof question_categories]}</h3>
				<ul>
					{#each responses as { id, questions: { question: questionText }, response: responseText } (id)}
						{#if questionText !== 'Gives aid?'}
							<!--TODO: Make a plan for this (gives aid)-->
							<li class="response">
								<span class="question">{questionText}</span>:
								<!-- eslint-disable-next-line svelte/no-at-html-tags -- linkify sanitizes output -->
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

	.subheading-actions {
		display: flex;
		flex-wrap: wrap;
		gap: 0.5rem;
		margin-top: 0.5rem;
	}

	.pill {
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
		cursor: pointer;
		font-family: inherit;

		svg {
			flex-shrink: 0;
			opacity: 0.7;
		}

		&:hover,
		&.open {
			background-color: #efe3d9;
			border-color: #00000018;
			color: #4a3f36;

			svg {
				opacity: 1;
			}
		}
	}

	.pill-wrapper {
		position: relative;
	}

	.emails-popover {
		position: absolute;
		top: calc(100% + 0.4rem);
		left: 0;
		width: max-content;
		max-width: min(24rem, calc(100vw - 2rem));
		background: #fff;
		border: 1px solid #00000018;
		border-radius: 0.5rem;
		box-shadow: 0 6px 20px #00000022;
		padding: 0.5rem 1rem;
		z-index: 10;

		ul {
			list-style: none;
			padding: 0;
			margin: 0;
		}

		li {
			margin: 0;
			padding: 0.25rem 0;
			font-size: 0.85rem;
			white-space: nowrap;
			display: flex;
			align-items: center;
			gap: 0.25rem;
		}

		a {
			color: #4a3f36;
			text-decoration: none;

			&:hover {
				text-decoration: underline;
			}
		}

		.copy-btn {
			background: none;
			border: none;
			padding: 0.25rem;
			margin-left: 0.35rem;
			border-radius: 0.3rem;
			color: #6b5b4f99;
			cursor: pointer;
			display: inline-flex;
			align-items: center;
			transition:
				background 0.12s ease,
				color 0.12s ease;

			&:hover {
				color: #4a3f36;
				background: #f5ebe4;
			}
		}
	}
</style>
