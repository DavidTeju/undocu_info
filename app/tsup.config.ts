import { defineConfig } from 'tsup';

// Bundles the operational CLI scripts into dist-scripts/*.js so the production
// container can run them without shipping src/ or relying on tsx. Each script
// gets its own self-contained bundle. Node modules stay external (resolved from
// node_modules at runtime), keeping bundles small and prisma client native
// bindings intact.
//
// Templates are loaded at runtime via readFileSync(__dirname/../templates/...),
// so the Dockerfile must copy scripts/templates -> templates next to dist-scripts/.
export default defineConfig({
	entry: [
		'scripts/email-outreach.ts',
		'scripts/verify-addresses.ts',
		'scripts/import-reoon-csv.ts',
		'scripts/preview-emails.ts',
		'scripts/spam-test.ts'
	],
	outDir: 'dist-scripts',
	format: ['esm'],
	target: 'node22',
	platform: 'node',
	splitting: false,
	sourcemap: true,
	clean: true,
	dts: false,
	shims: false
});
