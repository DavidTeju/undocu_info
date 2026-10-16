import { readFileSync } from 'node:fs';
import { describe, expect, it } from 'vitest';
import config from '../../svelte.config.js';

const appHtml = readFileSync(new URL('../app.html', import.meta.url), 'utf8');
const scriptTag = appHtml.match(
	/<script[^>]*src="([^"]+\/script\.js)"[^>]*data-website-id="([^"]+)"/
);

describe('Umami tracking', () => {
	it('loads the script from analytics.davidteju.dev with the site ID', () => {
		expect(scriptTag?.[1]).toBe('https://analytics.davidteju.dev/script.js');
		expect(scriptTag?.[2]).toBe('67003b73-dd4f-4b1b-94f5-e42b3f7287d5');
	});

	it('allows the script origin in the CSP', () => {
		const origin = new URL(scriptTag?.[1] ?? '').origin;
		expect(config.kit?.csp?.directives?.['script-src']).toContain(origin);
	});
});
