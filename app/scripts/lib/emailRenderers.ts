/**
 * Shared rendering logic for outreach + appreciation emails.
 *
 * Consumed by:
 *   - scripts/email-outreach.ts (the queue/send CLI)
 *   - scripts/preview-emails.ts (local previews — does not send)
 */

import { readFileSync } from 'fs';
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';
import type { PrismaClient } from '@prisma/client';

const __dirname = dirname(fileURLToPath(import.meta.url));
const TEMPLATES_DIR = join(__dirname, '..', 'templates');

export const OUTREACH_TEMPLATE = readFileSync(join(TEMPLATES_DIR, 'outreach.html'), 'utf-8');
export const APPRECIATION_TEMPLATE = readFileSync(
	join(TEMPLATES_DIR, 'appreciation.html'),
	'utf-8'
);

export const SENDER_NAME = 'David Tejuosho';
export const SENDER_EMAIL = 'davidtejuosho@undocustudent.org';
export const BASE_URL = 'https://undocustudent.org';

// Strip CRLF/tabs and collapse whitespace so DB-sourced values can't inject
// email headers (Bcc:, Cc:, etc.) when interpolated into a Subject line.
function sanitizeSubjectPart(value: string): string {
	return value
		.replace(/[\r\n\t]+/g, ' ')
		.replace(/\s+/g, ' ')
		.trim();
}

/**
 * Exact-match prestige set. Compared against `colleges.domain` which stores
 * the subdomain only (e.g. "stanford", not "stanford.edu"). Edit this list to
 * adjust prestige tagging — no substring matching, no regex.
 */
export const PRESTIGE_DOMAINS = new Set([
	'stanford',
	'harvard',
	'mit',
	'yale',
	'princeton',
	'columbia',
	'berkeley',
	'ucla',
	'usc',
	'nyu',
	'cornell',
	'duke',
	'northwestern',
	'uchicago',
	'upenn',
	'brown',
	'dartmouth',
	'caltech',
	'hmc'
]);

export interface ShowcaseUniversity {
	name: string;
	domain: string;
	responseCount: number;
	state: string | null;
}

export function isPrestigious(college: { domain: string }): boolean {
	return PRESTIGE_DOMAINS.has(college.domain.toLowerCase());
}

/**
 * Fetch the showcase pool: the top 50% of non-hidden colleges by response
 * count, restricted to those with at least one response. Call ONCE per run,
 * then call `pickShowcaseForRecipient(pool, recipient)` per email.
 */
export async function getShowcasePool(prisma: PrismaClient): Promise<ShowcaseUniversity[]> {
	const all = await prisma.colleges.findMany({
		where: {
			hidden: { not: true },
			responses: { some: {} }
		},
		include: {
			_count: { select: { responses: true } }
		},
		orderBy: {
			responses: { _count: 'desc' }
		}
	});

	const half = Math.ceil(all.length / 2);
	return all.slice(0, half).map((u) => ({
		name: u.name,
		domain: u.domain,
		responseCount: u._count.responses,
		state: u.state
	}));
}

function shuffle<T>(arr: T[]): T[] {
	const a = [...arr];
	for (let i = a.length - 1; i > 0; i--) {
		const j = Math.floor(Math.random() * (i + 1));
		[a[i], a[j]] = [a[j], a[i]];
	}
	return a;
}

/**
 * Pick `count` showcase universities for a recipient college. Prefers
 * (in tier order):
 *   Tier 1 — prestigious AND in the recipient's state
 *   Tier 2 — prestigious OR in the recipient's state (but not both)
 *   Tier 3 — neither
 * Random within each tier. Fills from the top down. Returned in descending
 * response-count order for nice rendering.
 */
export function pickShowcaseForRecipient(
	pool: ShowcaseUniversity[],
	recipient: { state: string | null },
	count = 3
): ShowcaseUniversity[] {
	const sameState = (c: ShowcaseUniversity) =>
		recipient.state != null && c.state != null && c.state === recipient.state;
	const prestige = (c: ShowcaseUniversity) => isPrestigious(c);

	const tier1 = pool.filter((c) => sameState(c) && prestige(c));
	const tier2 = pool.filter((c) => (sameState(c) || prestige(c)) && !(sameState(c) && prestige(c)));
	const tier3 = pool.filter((c) => !sameState(c) && !prestige(c));

	const picked: ShowcaseUniversity[] = [];
	for (const tier of [tier1, tier2, tier3]) {
		for (const c of shuffle(tier)) {
			if (picked.length >= count) break;
			picked.push(c);
		}
		if (picked.length >= count) break;
	}
	return picked.sort((a, b) => b.responseCount - a.responseCount);
}

export function generateOutreachEmail(
	collegeName: string,
	collegeDomain: string,
	showcaseUniversities: ShowcaseUniversity[]
): { subject: string; html: string } {
	const showcaseLinks = showcaseUniversities
		.map(
			(u) =>
				`<li><a href="${BASE_URL}/college/${u.domain}" style="color: #2563eb;">${u.name}</a> - ${u.responseCount} policy answers</li>`
		)
		.join('\n      ');

	const html = OUTREACH_TEMPLATE.replace(/\{\{COLLEGE_NAME\}\}/g, collegeName)
		.replace(/\{\{EDIT_URL\}\}/g, `${BASE_URL}/college/${collegeDomain}/edit`)
		.replace(/\{\{VIEW_URL\}\}/g, `${BASE_URL}/college/${collegeDomain}`)
		.replace(/\{\{SHOWCASE_LINKS\}\}/g, showcaseLinks)
		.replace(/\{\{SENDER_NAME\}\}/g, SENDER_NAME);

	return {
		subject: `Help undocumented students learn about ${sanitizeSubjectPart(collegeName)}'s policies`,
		html
	};
}

export function generateAppreciationEmail(
	collegeName: string,
	collegeDomain: string,
	responseCount: number
): { subject: string; html: string } {
	const html = APPRECIATION_TEMPLATE.replace(/\{\{COLLEGE_NAME\}\}/g, collegeName)
		.replace(/\{\{RESPONSE_COUNT\}\}/g, String(responseCount))
		.replace(/\{\{EDIT_URL\}\}/g, `${BASE_URL}/college/${collegeDomain}/edit`)
		.replace(/\{\{VIEW_URL\}\}/g, `${BASE_URL}/college/${collegeDomain}`)
		.replace(/\{\{SENDER_NAME\}\}/g, SENDER_NAME);

	return {
		subject: `Thank you for supporting undocumented students at ${sanitizeSubjectPart(collegeName)}`,
		html
	};
}
