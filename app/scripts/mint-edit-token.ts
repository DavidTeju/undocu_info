/**
 * One-off: print an auth'd edit URL for a (college, recipient) pair.
 *
 * Used to hand-test the magic-link flow without sending an actual email.
 * Token is signed with EDIT_AUTH_HMAC_SECRET; URL points at --base-url
 * (default https://undocustudent.org).
 *
 * Usage:
 *   tsx scripts/mint-edit-token.ts --domain <college-domain> --email <recipient> [--base-url <url>]
 */

import { config } from 'dotenv';
import { PrismaClient } from '@prisma/client';
import { buildEditAuthUrl } from '../src/lib/server/editAuthToken';
import { normalizeEnvValue } from './lib/env';

config();

function parseArg(name: string): string | null {
	const idx = process.argv.findIndex((a) => a === `--${name}` || a.startsWith(`--${name}=`));
	if (idx === -1) return null;
	const arg = process.argv[idx];
	if (arg.includes('=')) return arg.split('=').slice(1).join('=');
	return process.argv[idx + 1] ?? null;
}

async function main(): Promise<void> {
	const domain = parseArg('domain');
	const email = parseArg('email');
	const baseUrl = parseArg('base-url') ?? 'https://undocustudent.org';

	if (!domain || !email) {
		console.error(
			'Usage: tsx scripts/mint-edit-token.ts --domain <college-domain> --email <recipient> [--base-url <url>]'
		);
		process.exit(1);
	}

	const secret = normalizeEnvValue(process.env.EDIT_AUTH_HMAC_SECRET);
	if (!secret) {
		console.error('EDIT_AUTH_HMAC_SECRET not set');
		process.exit(1);
	}

	const prisma = new PrismaClient();
	try {
		const college = await prisma.colleges.findUnique({
			where: { domain },
			select: { id: true, name: true, domain: true }
		});
		if (!college) {
			console.error(`College with domain "${domain}" not found`);
			process.exit(1);
		}

		const url = buildEditAuthUrl(
			baseUrl,
			`/college/${college.domain}/edit`,
			college.id,
			email,
			secret
		);

		console.log(JSON.stringify({ college, recipient: email, url }, null, 2));
	} finally {
		await prisma.$disconnect();
	}
}

void main();
