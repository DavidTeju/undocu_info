import { svelteConfig } from '@davidteju/dev-config/eslint/svelte';

export default [
	{
		ignores: ['dist-scripts/**']
	},
	...svelteConfig(),
	// Project-specific rules
	{
		rules: {
			'array-callback-return': 'error',
			'no-template-curly-in-string': 'warn',
			'no-control-regex': 0
		}
	}
];
