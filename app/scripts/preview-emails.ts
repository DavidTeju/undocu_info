/**
 * Generate HTML previews of outreach + appreciation emails using REAL data
 * from the database. Writes files to ../tmp/email-previews/ — never sends.
 *
 * Demonstrates the per-recipient tier-based showcase selection by rendering
 * outreach for several different recipients (each gets its own random sample
 * from the appropriate tiers).
 *
 * Usage:
 *   cd app && npx tsx scripts/preview-emails.ts
 */

import { PrismaClient } from '@prisma/client';
import { config } from 'dotenv';
import { mkdirSync, writeFileSync } from 'fs';
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';
import {
	PRESTIGE_DOMAINS,
	generateAppreciationEmail,
	generateOutreachEmail,
	getShowcasePool,
	isPrestigious,
	pickShowcaseForRecipient,
	type ShowcaseUniversity
} from './lib/emailRenderers';

config();

const __dirname = dirname(fileURLToPath(import.meta.url));
const OUT_DIR = join(__dirname, '..', '..', 'tmp', 'email-previews');

const prisma = new PrismaClient({
	datasources: {
		db: { url: process.env.DIRECT_DATABASE_URL || process.env.DATABASE_URL }
	}
});

interface Sample {
	file: string;
	label: string;
	subject: string;
	html: string;
	showcaseUsed?: ShowcaseUniversity[];
	recipientState?: string | null;
}

function tagFor(c: ShowcaseUniversity, recipientState: string | null): string {
	const sameState = recipientState != null && c.state === recipientState;
	const prest = isPrestigious(c);
	if (sameState && prest) return 'T1: in-state + prestige';
	if (sameState) return 'T2: in-state';
	if (prest) return 'T2: prestige';
	return 'T3';
}

async function main() {
	mkdirSync(OUT_DIR, { recursive: true });

	const pool = await getShowcasePool(prisma);
	if (pool.length === 0) {
		throw new Error('No colleges with responses found — cannot build showcase pool.');
	}

	const prestigeInPool = pool.filter(isPrestigious);
	console.log(
		`Pool: ${pool.length} colleges. Prestige (exact-match) in pool: ${prestigeInPool.length}` +
			(prestigeInPool.length
				? ` — ${prestigeInPool.map((p) => `${p.name} (${p.responseCount}, ${p.state ?? '?'})`).join(', ')}`
				: '')
	);

	// Pick a few outreach candidates from different states so the per-recipient
	// variance (especially the "same state" tier) shows up.
	const outreachCandidates = await prisma.colleges.findMany({
		where: {
			hidden: { not: true },
			emailaddresses: { some: {} },
			responses: { none: {} }
		},
		orderBy: { name: 'asc' }
	});

	if (outreachCandidates.length === 0) {
		console.warn(
			'⚠ No eligible outreach candidates (need: not hidden, has email, zero responses).'
		);
	}

	// Take the first candidate plus one from a different state (if available)
	// so we can show how the showcase shifts based on the recipient's location.
	const firstOutreach = outreachCandidates[0];
	const differentStateOutreach = outreachCandidates.find(
		(c) => c.state != null && c.state !== firstOutreach?.state
	);

	const outreachPicks = [firstOutreach, differentStateOutreach].filter(
		(c): c is NonNullable<typeof c> => c != null
	);

	// Appreciation: most-responses and fewest-responses (>0).
	const collegesWithResponses = await prisma.colleges.findMany({
		where: { hidden: { not: true }, responses: { some: {} } },
		include: { _count: { select: { responses: true } } },
		orderBy: { responses: { _count: 'desc' } }
	});
	const high = collegesWithResponses[0];
	const low = [...collegesWithResponses].sort((a, b) => a._count.responses - b._count.responses)[0];

	const samples: Sample[] = [];

	outreachPicks.forEach((recipient, i) => {
		const showcase = pickShowcaseForRecipient(pool, recipient);
		const rendered = generateOutreachEmail(recipient.name, recipient.domain, showcase);
		samples.push({
			file: `${i + 1}-outreach-${recipient.domain}.html`,
			label: `Outreach → ${recipient.name} (state: ${recipient.state ?? 'unknown'})`,
			showcaseUsed: showcase,
			recipientState: recipient.state,
			...rendered
		});
	});

	if (high) {
		samples.push({
			file: `${outreachPicks.length + 1}-appreciation-most.html`,
			label: `Appreciation → ${high.name} (${high._count.responses} responses — most in DB)`,
			...generateAppreciationEmail(high.name, high.domain, high._count.responses)
		});
	}

	if (low && low.id !== high?.id) {
		samples.push({
			file: `${outreachPicks.length + 2}-appreciation-least.html`,
			label: `Appreciation → ${low.name} (${low._count.responses} responses — fewest in DB)`,
			...generateAppreciationEmail(low.name, low.domain, low._count.responses)
		});
	}

	for (const s of samples) {
		writeFileSync(join(OUT_DIR, s.file), s.html, 'utf-8');
	}

	const indexHtml = `<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Email Outreach Previews — Real Data</title>
	<style>
		body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; max-width: 820px; margin: 40px auto; padding: 0 20px; color: #222; }
		h1 { font-size: 22px; margin-bottom: 4px; }
		.meta { color: #666; font-size: 13px; margin-bottom: 18px; }
		.sample { border: 1px solid #ddd; border-radius: 8px; padding: 16px 20px; margin-bottom: 16px; }
		.sample h2 { margin: 0 0 6px 0; font-size: 16px; }
		.subj { color: #555; font-size: 14px; margin: 0 0 10px 0; }
		.subj b { color: #222; }
		.showcase-used { font-size: 13px; color: #444; margin: 6px 0 12px 0; padding-left: 18px; }
		.tag { display: inline-block; font-size: 11px; padding: 1px 6px; border-radius: 4px; margin-left: 6px; vertical-align: middle; }
		.tag-T1 { background: #dcfce7; color: #166534; }
		.tag-T2 { background: #fef3c7; color: #78350f; }
		.tag-T3 { background: #f1f5f9; color: #475569; }
		a.btn { display: inline-block; background: #2563eb; color: #fff; padding: 8px 14px; border-radius: 6px; text-decoration: none; font-size: 14px; }
		.pool-info { background: #f6f8fa; border-radius: 6px; padding: 10px 14px; font-size: 13px; color: #444; margin-bottom: 18px; }
		.pool-info b { color: #222; }
	</style>
</head>
<body>
	<h1>Email Outreach — Real-Data Preview</h1>
	<p class="meta">Generated ${new Date().toISOString()} from the live database. No emails sent.</p>
	<div class="pool-info">
		<b>Pool:</b> top-50% of has-response colleges (${pool.length} colleges).<br />
		<b>Prestige in pool (exact-match):</b> ${
			prestigeInPool.length
				? prestigeInPool
						.map((p) => `${p.name} (${p.responseCount} responses, ${p.state ?? 'state?'})`)
						.join('; ')
				: '<i>none</i>'
		}<br />
		<b>Prestige set:</b> ${[...PRESTIGE_DOMAINS].sort().join(', ')}
	</div>
	${samples
		.map((s) => {
			const showcaseLine = s.showcaseUsed
				? `<ul class="showcase-used">${s.showcaseUsed
						.map((u) => {
							const tag = tagFor(u, s.recipientState ?? null);
							const tagClass = tag.startsWith('T1')
								? 'tag-T1'
								: tag.startsWith('T2')
									? 'tag-T2'
									: 'tag-T3';
							return `<li>${u.name} <i>(${u.state ?? '?'}, ${u.responseCount} responses)</i><span class="tag ${tagClass}">${tag}</span></li>`;
						})
						.join('')}</ul>`
				: '';
			return `<div class="sample">
		<h2>${s.label}</h2>
		<p class="subj"><b>Subject:</b> ${s.subject}</p>
		${showcaseLine}
		<a class="btn" href="./${s.file}" target="_blank">Open preview →</a>
	</div>`;
		})
		.join('\n\t')}
</body>
</html>`;
	writeFileSync(join(OUT_DIR, 'index.html'), indexHtml, 'utf-8');

	console.log(`\nWrote ${samples.length} preview(s) + index to: ${OUT_DIR}`);
	for (const s of samples) console.log(`  - ${s.file}  (${s.subject})`);
	console.log(`\nOpen: ${join(OUT_DIR, 'index.html')}`);
}

main()
	.catch((e) => {
		console.error(e);
		process.exit(1);
	})
	.finally(() => prisma.$disconnect());
