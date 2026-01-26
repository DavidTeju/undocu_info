import { describe, it, expect } from 'vitest';
import { linkify } from './linkify';

describe('linkify', () => {
	describe('anchor tags with straight quotes', () => {
		it('should preserve anchor tags with double quotes', () => {
			const input = '<a href="https://example.com">Link</a>';
			const result = linkify(input);
			expect(result).toContain('href="https://example.com"');
			expect(result).toContain('>Link</a>');
		});

		it('should preserve anchor tags with single quotes', () => {
			const input = "<a href='https://example.com'>Link</a>";
			const result = linkify(input);
			expect(result).toContain('href="https://example.com"');
			expect(result).toContain('>Link</a>');
		});
	});

	describe('anchor tags with curly/smart quotes', () => {
		it('should preserve anchor tags with right curly double quotes (U+201D)', () => {
			// This is the actual character that was causing the bug
			const rightCurly = String.fromCharCode(8221); // "
			const input = `<a href=${rightCurly}https://example.com${rightCurly}>Link</a>`;
			const result = linkify(input);
			expect(result).toContain('href="https://example.com"');
			expect(result).toContain('>Link</a>');
		});

		it('should preserve anchor tags with left curly double quotes (U+201C)', () => {
			const leftCurly = String.fromCharCode(8220); // "
			const input = `<a href=${leftCurly}https://example.com${leftCurly}>Link</a>`;
			const result = linkify(input);
			expect(result).toContain('href="https://example.com"');
			expect(result).toContain('>Link</a>');
		});

		it('should preserve anchor tags with mixed curly quotes', () => {
			const leftCurly = String.fromCharCode(8220); // "
			const rightCurly = String.fromCharCode(8221); // "
			const input = `<a href=${leftCurly}https://example.com${rightCurly}>Link</a>`;
			const result = linkify(input);
			expect(result).toContain('href="https://example.com"');
			expect(result).toContain('>Link</a>');
		});

		it('should preserve anchor tags with curly single quotes', () => {
			const leftSingle = String.fromCharCode(8216); // '
			const rightSingle = String.fromCharCode(8217); // '
			const input = `<a href=${leftSingle}https://example.com${rightSingle}>Link</a>`;
			const result = linkify(input);
			expect(result).toContain('href="https://example.com"');
			expect(result).toContain('>Link</a>');
		});
	});

	describe('bare URLs', () => {
		it('should convert bare URLs to links', () => {
			const input = 'Visit https://example.com for more info';
			const result = linkify(input);
			expect(result).toContain('<a href="https://example.com"');
			expect(result).toContain('target="_blank"');
		});

		it('should not double-link URLs already in anchor tags', () => {
			const input = '<a href="https://example.com">https://example.com</a>';
			const result = linkify(input);
			// Should only have one anchor tag, not nested
			const anchorCount = (result.match(/<a /g) || []).length;
			expect(anchorCount).toBe(1);
		});
	});

	describe('bare emails', () => {
		it('should convert bare emails to mailto links', () => {
			const input = 'Contact us at test@example.com';
			const result = linkify(input);
			expect(result).toContain('<a href="mailto:test@example.com"');
			expect(result).toContain('target="_blank"');
		});
	});

	describe('HTML escaping', () => {
		it('should escape HTML in plain text', () => {
			const input = 'Use <script>alert("xss")</script> carefully';
			const result = linkify(input);
			expect(result).not.toContain('<script>');
			expect(result).toContain('&lt;script&gt;');
		});

		it('should escape malicious href protocols', () => {
			const input = '<a href="javascript:alert(1)">Click</a>';
			const result = linkify(input);
			expect(result).not.toContain('href="javascript:');
			expect(result).toContain('&lt;a href=');
		});
	});

	describe('safe protocols', () => {
		it('should allow https URLs', () => {
			const input = '<a href="https://example.com">Link</a>';
			const result = linkify(input);
			expect(result).toContain('href="https://example.com"');
		});

		it('should allow http URLs', () => {
			const input = '<a href="http://example.com">Link</a>';
			const result = linkify(input);
			expect(result).toContain('href="http://example.com"');
		});

		it('should allow mailto URLs', () => {
			const input = '<a href="mailto:test@example.com">Email</a>';
			const result = linkify(input);
			expect(result).toContain('href="mailto:test@example.com"');
		});

		it('should allow tel URLs', () => {
			const input = '<a href="tel:+1234567890">Call</a>';
			const result = linkify(input);
			expect(result).toContain('href="tel:+1234567890"');
		});
	});

	describe('preserved tags', () => {
		it('should preserve <p> tags', () => {
			const input = '<p>Paragraph text</p>';
			const result = linkify(input);
			expect(result).toContain('<p>');
			expect(result).toContain('</p>');
		});

		it('should preserve <br> tags', () => {
			const input = 'Line 1<br>Line 2';
			const result = linkify(input);
			expect(result).toContain('<br>');
		});
	});

	describe('real-world examples', () => {
		it('should handle DU-style content with curly quotes', () => {
			// Simulating the actual content that was failing
			const rightCurly = String.fromCharCode(8221);
			const input = `I have included links: <a href=${rightCurly}https://www.du.edu/visit${rightCurly}>Visit</a> – for more info.`;
			const result = linkify(input);
			expect(result).toContain('href="https://www.du.edu/visit"');
			expect(result).toContain('>Visit</a>');
		});

		it('should handle multiple anchor tags with curly quotes', () => {
			const rightCurly = String.fromCharCode(8221);
			const input = `<a href=${rightCurly}https://first.com${rightCurly}>First</a> and <a href=${rightCurly}https://second.com${rightCurly}>Second</a>`;
			const result = linkify(input);
			expect(result).toContain('href="https://first.com"');
			expect(result).toContain('href="https://second.com"');
		});
	});
});
