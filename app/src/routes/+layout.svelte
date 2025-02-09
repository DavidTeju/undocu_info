<script lang="ts">
	import 'normalize.css';

	let { children } = $props();
</script>

<div class="background">
	<div class="page-wrapper">
		<nav>
			<p class="site-title"><a href='/'>Undocu-Info</a></p>
		</nav>
		{@render children()}
	</div>
</div>

<style lang="scss">
  @import "tailwindcss";
  @import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap');

  .background {
    /*background-color: #CACFD6;*/
    background-color: darken(#FBF5F2, 5%);
    border: solid 1px #00000000;
    padding: 1rem;
    min-height: 100vh;
  }

  .page-wrapper {
    //background-color: darken(#FBF5F2, 1%);
    //background-color: darken(#FBF5F2, 90%);
    //border: solid 1px black;
    border-radius: 1rem;
    background-color: #FBF5F2;
    word-break: break-word;
    //background-color: black;

    font-family: "Roboto", serif;
    font-optical-sizing: auto;
    //font-weight: < weight>;
    font-style: normal;
    line-height: 1.5;
    font-variation-settings: "wdth" 100;
    min-height: 80vh;
    color: #272838
  }

  .site-title {
    font-family: "Roboto", serif;
    font-optical-sizing: auto;
    font-style: normal;
    font-size: 1.75rem;
    font-weight: 700;
    //text-align: center;
    padding: 1.25rem 2rem .5rem;
    //text-decoration: underline;
    border-bottom: dashed 1px #272838;
    background-color: inherit;
    //color: #FBF5F2;
    /*border-bottom: 1px solid #e0e0e0;*/
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

    //color: #272838;
    color: #0000EE
  }


</style>
