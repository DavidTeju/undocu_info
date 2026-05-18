<script lang="ts">
	import { resolve } from '$app/paths';
	import 'normalize.css';

	let { children } = $props();
</script>

<div class="background">
	<div class="page-wrapper">
		<nav>
			<p class="site-title"><a href={resolve('/')}>Undocu-Info</a></p>
			<p class="source-code"><a href="https://github.com/DavidTeju/undocu_info">Source Code</a></p>
		</nav>
		{@render children()}
	</div>
</div>

<style lang="scss">
	@use 'sass:color';
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap');

	.background {
		background-color: color.adjust(#fbf5f2, $lightness: -5%);
		border: solid 1px #00000000;
		padding: 1rem;
		min-height: 100vh;
	}

	.page-wrapper {
		border-radius: 1rem;
		background-color: #fbf5f2;
		word-break: break-word;
		font-family: 'Roboto', serif;
		font-optical-sizing: auto;
		font-style: normal;
		line-height: 1.5;
		font-variation-settings: 'wdth' 100;
		min-height: 80vh;
		color: #272838;
	}

	nav {
		display: flex;
		border-bottom: dashed 1px #272838;
		justify-content: space-between;
		flex-direction: row;
		align-items: center;
		padding: 1.25rem min(2rem, 5vw) 0.5rem;

		p {
			margin: 0;

			a {
				color: #272838;
			}

			&.source-code {
				&::before {
					content: '';
					background-image: url('/github-mark.svg');
					background-size: 1rem;
					background-repeat: no-repeat;
					display: inline-block;
					width: 1rem;
					height: 1rem;
					vertical-align: middle;
					margin-right: 0.2rem;
				}

				font-size: 0.8rem;
			}
		}
	}

	.site-title {
		font-family: 'Roboto', serif;
		font-optical-sizing: auto;
		font-style: normal;
		font-size: 1.75rem;
		font-weight: 700;
		background-color: inherit;

		a {
			border: none;
		}
	}

	:global {
		* {
			box-sizing: border-box;
		}

		a {
			line-height: 1.5;
			border-bottom: 1px solid;
			text-decoration: none;
		}
	}

	:global(a) {
		&:hover,
		&:focus {
			border-bottom: 0;
		}

		color: #0000ee;
	}
</style>
