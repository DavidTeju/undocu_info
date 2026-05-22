export function normalizeEmail(email: string): string {
	return email.trim().toLowerCase();
}

export function normalizeOptionalEmail(email: string | undefined | null): string | null {
	const normalized = email?.trim().toLowerCase();
	return normalized || null;
}
