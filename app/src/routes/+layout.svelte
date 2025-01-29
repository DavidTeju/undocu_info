<script lang="ts">
	import 'normalize.css';

	let { children } = $props();
</script>

<div class="background">

	<nav>
		<p class="site-title"><a href='/'>Undocu-Info</a></p>
	</nav>
	{@render children()}
</div>

<style lang="scss">
  @import "tailwindcss";
  @import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap');

  .background {
    /*background-color: #CACFD6;*/
    background-color: darken(#FBF5F2, 5%);

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
    border-bottom: solid 1px #272838;
    background-color: inherit;
    //color: #FBF5F2;
    /*border-bottom: 1px solid #e0e0e0;*/
  }
</style>