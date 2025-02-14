<script lang="ts">
	import { page } from '$app/state';

	let { college } = $props();
	const { domain, name }: { domain: string, name: string } = college;
	const FILES_ROOT = page.url.host.includes('undocustudent.org') ? 'https://files.undocustudent.org' : 'http://127.0.0.1:54321';
	let src = $state(`${FILES_ROOT}/storage/v1/render/image/public/campuses/${domain}/0?width=1000&height=750`);

	function handleError(event) {
		event.target.src = '/generic.webp';
	}
</script>

<a href={`/college/${domain}`} class="parent">
	<img class="first" alt=""
			 onerror={handleError}
			 {src} />
	<div class="last">
						<span>
			{name}
						</span>
	</div>
</a>

<style lang="scss">
  .parent {
    display: inline-flex;
    flex-direction: column;
    width: 20rem;
    //height: 20rem;
    aspect-ratio: 1 / 1;
    border-radius: 1rem;
    overflow: hidden;
    background-color: rgb(245, 230, 222.5);
    box-sizing: content-box;
    align-items: stretch;
    text-decoration: underline #272838;
    border: 5px solid rgb(245, 230, 222.5);
    box-shadow: 0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1);

    &:hover {
      transform: scale(1.01);
      text-decoration: none;

    }
  }

  img.first {
    flex-grow: 1;
    object-fit: cover;
    height: 0;
  }

  .last {
    height: 20%;
    padding: 0 .5rem;
    font-size: 1.2rem;
    color: #272838;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  @media screen and (max-width: 600px) {
    .parent {
      height: 4rem;
      flex-direction: row;
			aspect-ratio: unset;
			width: 70%;

      img {
        height: 100%;
        aspect-ratio: 1 / 1;
				flex-grow: unset;
      }

			.last {
				height: 100%;
				font-size: 0.8rem;
			}
    }
  }
</style>