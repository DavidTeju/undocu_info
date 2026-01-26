import { validEmailRegex, validUrlRegex } from './utils';

/**
 * Converts text containing URLs, emails, and anchor tags into safe HTML with clickable links.
 * - Preserves existing anchor tags (with straight or curly quotes)
 * - Converts bare URLs to links
 * - Converts bare emails to mailto links
 * - Escapes all other HTML to prevent XSS
 */
export function linkify(text: string): string {
	const escapeHtml = (str: string) =>
		str.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');

	// Check if href uses a safe protocol (http, https, mailto, tel, or relative path)
	const isSafeHref = (href: string): boolean => {
		const trimmed = href.trim().toLowerCase();
		if (/^(https?:\/\/|mailto:|tel:)/i.test(trimmed)) return true;
		// Allow relative paths (no colon, or colon comes after first slash)
		const colonIdx = trimmed.indexOf(':');
		return colonIdx === -1 || (trimmed.indexOf('/') !== -1 && trimmed.indexOf('/') < colonIdx);
	};

	const preserved: string[] = [];

	// Step 1: Extract and validate existing anchor tags
	// Include curly quotes ("" '') which sometimes appear in user-submitted content
	// Using Unicode escapes: \u201C (") \u201D (") \u2018 (') \u2019 (')
	const quoteChars = `"'\\u201C\\u201D\\u2018\\u2019`;
	const anchorRegex = new RegExp(
		`<a\\s+[^>]*href\\s*=\\s*[${quoteChars}]([^${quoteChars}]*)[${quoteChars}][^>]*>([\\s\\S]*?)<\\/a>`,
		'gi'
	);
	let processed = text.replace(anchorRegex, (match, href, content) => {
		if (isSafeHref(href)) {
			// Allow safe inline tags inside anchors, escape everything else
			const inlineTags: string[] = [];
			const safeContent = content
				.replace(/<(\/?)(b|i|strong|em|u)>/gi, (_: string, slash: string, tag: string) => {
					inlineTags.push(`<${slash}${tag}>`);
					return `\x01IT${inlineTags.length - 1}\x01`;
				})
				.replace(/<[^>]*>/g, (tag: string) => escapeHtml(tag))
				.replace(/\x01IT(\d+)\x01/g, (_: string, i: string) => inlineTags[parseInt(i)]);
			const safeHref = escapeHtml(href);
			preserved.push(
				`<a href="${safeHref}" target="_blank" rel="noopener noreferrer">${safeContent}</a>`
			);
		} else {
			preserved.push(escapeHtml(match));
		}
		return `\x00P${preserved.length - 1}\x00`;
	});

	// Step 2: Preserve safe standalone tags (p, br)
	processed = processed.replace(/<(\/?)(p|br)\s*\/?>/gi, (match) => {
		preserved.push(match);
		return `\x00P${preserved.length - 1}\x00`;
	});

	// Step 3: Extract bare URLs (not already inside anchor tags)
	processed = processed.replace(validUrlRegex, (url) => {
		const escaped = escapeHtml(url);
		preserved.push(`<a href="${escaped}" target="_blank" rel="noopener noreferrer">${escaped}</a>`);
		return `\x00P${preserved.length - 1}\x00`;
	});

	// Step 4: Extract bare emails
	processed = processed.replace(validEmailRegex, (email) => {
		const escaped = escapeHtml(email);
		preserved.push(
			`<a href="mailto:${escaped}" target="_blank" rel="noopener noreferrer">${escaped}</a>`
		);
		return `\x00P${preserved.length - 1}\x00`;
	});

	// Step 5: Escape everything else
	processed = escapeHtml(processed);

	// Step 6: Restore preserved items
	return processed.replace(/\x00P(\d+)\x00/g, (_, i) => preserved[parseInt(i)]);
}
