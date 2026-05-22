import { describe, it, expect } from 'vitest';
import { generateOutreachEmail, generateAppreciationEmail } from './emailRenderers';

describe('email subjects — header injection protection', () => {
	it('strips CRLF from college name in outreach subject', () => {
		const malicious = 'Evil U\r\nBcc: attacker@example.com';
		const { subject } = generateOutreachEmail(malicious, 'evil', []);
		expect(subject).not.toMatch(/[\r\n]/);
	});

	it('strips CRLF from college name in appreciation subject', () => {
		const malicious = 'Friendly U\r\nBcc: attacker@example.com';
		const { subject } = generateAppreciationEmail(malicious, 'friendly', 5);
		expect(subject).not.toMatch(/[\r\n]/);
	});

	it('collapses tabs and trims whitespace in subject', () => {
		const { subject } = generateOutreachEmail('  Tab\tU  ', 'tab', []);
		expect(subject).not.toMatch(/\t/);
		expect(subject).toContain('Tab U');
	});

	it('leaves normal college names untouched', () => {
		const { subject } = generateOutreachEmail('Stanford University', 'stanford', []);
		expect(subject).toBe("Help undocumented students learn about Stanford University's policies");
	});
});

describe('generateOutreachEmail — deliverability-friendly content', () => {
	const showcase = [
		{ name: 'Harvard University', domain: 'harvard', responseCount: 42, state: 'MA' },
		{ name: 'Yale University', domain: 'yale', responseCount: 29, state: 'CT' }
	];

	it('returns a hand-written text/plain version alongside HTML', () => {
		const { html, text } = generateOutreachEmail('Stanford University', 'stanford', showcase);
		expect(typeof text).toBe('string');
		expect(text.length).toBeGreaterThan(100);
		expect(html.length).toBeGreaterThan(100);
	});

	it('strips all inline style attributes from the HTML', () => {
		const { html } = generateOutreachEmail('Stanford University', 'stanford', showcase);
		expect(html).not.toMatch(/style=/i);
	});

	it('omits the "Hello from UndocuStudent.org" header that was on the old template', () => {
		const { html } = generateOutreachEmail('Stanford University', 'stanford', showcase);
		expect(html.toLowerCase()).not.toContain('hello from undocustudent');
	});

	it('does not wrap the sender name in <strong>', () => {
		const { html } = generateOutreachEmail('Stanford University', 'stanford', showcase);
		expect(html).not.toMatch(/<strong>\s*David Tejuosho\s*<\/strong>/);
	});

	it('text version contains no HTML tags', () => {
		const { text } = generateOutreachEmail('Stanford University', 'stanford', showcase);
		expect(text).not.toMatch(/<[a-z]+[^>]*>/i);
	});

	it('text version mentions the college name and includes showcase entries', () => {
		const { text } = generateOutreachEmail('Stanford University', 'stanford', showcase);
		expect(text).toContain('Stanford University');
		expect(text).toContain('Harvard University');
		expect(text).toContain('Yale University');
	});

	it('text version includes the edit and view URLs', () => {
		const { text } = generateOutreachEmail('Stanford University', 'stanford', showcase);
		expect(text).toContain('https://undocustudent.org/college/stanford/edit');
		expect(text).toContain('https://undocustudent.org/college/stanford');
	});
});

describe('generateAppreciationEmail — deliverability-friendly content', () => {
	it('returns a text/plain version alongside HTML', () => {
		const { html, text } = generateAppreciationEmail('Stanford University', 'stanford', 12);
		expect(typeof text).toBe('string');
		expect(text.length).toBeGreaterThan(50);
		expect(html.length).toBeGreaterThan(50);
	});

	it('text version contains no HTML tags', () => {
		const { text } = generateAppreciationEmail('Stanford University', 'stanford', 12);
		expect(text).not.toMatch(/<[a-z]+[^>]*>/i);
	});

	it('text version includes the response count and college name', () => {
		const { text } = generateAppreciationEmail('Stanford University', 'stanford', 12);
		expect(text).toContain('Stanford University');
		expect(text).toContain('12');
	});
});
