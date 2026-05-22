/**
 * Build RFC 2369 / RFC 8058 unsubscribe headers for a single recipient.
 *
 * Why: Gmail and Yahoo's Feb 2024 bulk-sender rules require both
 * `List-Unsubscribe` (mailto + https URLs) AND `List-Unsubscribe-Post`
 * (signaling RFC 8058 one-click) on cold outreach. Missing these is one
 * of the most common reasons new sending domains land in spam.
 */

import { buildUnsubscribeUrl } from '../../src/lib/server/unsubscribeToken';
import { normalizeEnvValue } from './env';

export const UNSUBSCRIBE_MAILTO = 'unsubscribe@undocustudent.org';
export const UNSUBSCRIBE_BASE_URL = 'https://undocustudent.org';

export function getUnsubscribeSecret(env: NodeJS.ProcessEnv = process.env): string {
	const secret = normalizeEnvValue(env.UNSUBSCRIBE_HMAC_SECRET);
	if (!secret) {
		throw new Error('UNSUBSCRIBE_HMAC_SECRET must be set');
	}
	return secret;
}

export function buildUnsubscribeHeaders(
	collegeId: number,
	email: string,
	secret: string,
	baseUrl: string = UNSUBSCRIBE_BASE_URL
): Record<string, string> {
	const url = buildUnsubscribeUrl(baseUrl, collegeId, email, secret);
	return {
		'List-Unsubscribe': `<mailto:${UNSUBSCRIBE_MAILTO}?subject=unsubscribe>, <${url}>`,
		'List-Unsubscribe-Post': 'List-Unsubscribe=One-Click'
	};
}
