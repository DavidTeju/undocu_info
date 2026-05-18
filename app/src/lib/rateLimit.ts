/**
 * Simple in-memory cooldown-based rate limiter for OTP requests.
 * Enforces a minimum interval between requests per key.
 */

const lastRequestTime = new Map<string, number>();

// Periodic cleanup of stale entries (every 10 minutes)
setInterval(
	() => {
		const now = Date.now();
		for (const [key, timestamp] of lastRequestTime) {
			if (now - timestamp > 10 * 60 * 1000) {
				lastRequestTime.delete(key);
			}
		}
	},
	10 * 60 * 1000
);

/**
 * Check if a request should be rate limited based on a cooldown period.
 * @param key - Unique identifier (e.g. email address or IP)
 * @param cooldownMs - Minimum milliseconds between requests
 * @returns `{ limited: false }` if allowed, or `{ limited: true, retryAfter }` with
 *          the number of seconds until the next request is allowed.
 */
export function rateLimit(
	key: string,
	cooldownMs: number
): { limited: false } | { limited: true; retryAfter: number } {
	const now = Date.now();
	const last = lastRequestTime.get(key);

	if (last && now - last < cooldownMs) {
		const retryAfter = Math.ceil((last + cooldownMs - now) / 1000);
		return { limited: true, retryAfter };
	}

	lastRequestTime.set(key, now);
	return { limited: false };
}
