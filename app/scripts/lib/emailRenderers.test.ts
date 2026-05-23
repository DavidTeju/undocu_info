import { describe, it, expect } from 'vitest';
import {
	generateOutreachEmail,
	generateAppreciationEmail,
	type RecipientContext
} from './emailRenderers';

const SECRET = 'test-secret-for-email-renderers';

function makeCtx(overrides: Partial<RecipientContext> = {}): RecipientContext {
	return {
		collegeId: 42,
		collegeName: 'Stanford University',
		collegeDomain: 'stanford',
		recipientEmail: 'admissions@stanford.edu',
		...overrides
	};
}

describe('email subjects — header injection protection', () => {
	it('strips CRLF from college name in outreach subject', () => {
		const ctx = makeCtx({
			collegeName: 'Evil U\r\nBcc: attacker@example.com',
			collegeDomain: 'evil'
		});
		const { subject } = generateOutreachEmail(ctx, [], SECRET);
		expect(subject).not.toMatch(/[\r\n]/);
	});

	it('strips CRLF from college name in appreciation subject', () => {
		const ctx = makeCtx({
			collegeName: 'Friendly U\r\nBcc: attacker@example.com',
			collegeDomain: 'friendly'
		});
		const { subject } = generateAppreciationEmail(ctx, 5, SECRET);
		expect(subject).not.toMatch(/[\r\n]/);
	});

	it('collapses tabs and trims whitespace in subject', () => {
		const ctx = makeCtx({ collegeName: '  Tab\tU  ', collegeDomain: 'tab' });
		const { subject } = generateOutreachEmail(ctx, [], SECRET);
		expect(subject).not.toMatch(/\t/);
		expect(subject).toContain('Tab U');
	});

	it('leaves normal college names untouched', () => {
		const { subject } = generateOutreachEmail(makeCtx(), [], SECRET);
		expect(subject).toBe("Help undocumented students learn about Stanford University's policies");
	});
});

describe('generateOutreachEmail — deliverability-friendly content', () => {
	const showcase = [
		{ name: 'Harvard University', domain: 'harvard', responseCount: 42, state: 'MA' },
		{ name: 'Yale University', domain: 'yale', responseCount: 29, state: 'CT' }
	];

	it('returns a hand-written text/plain version alongside HTML', () => {
		const { html, text } = generateOutreachEmail(makeCtx(), showcase, SECRET);
		expect(typeof text).toBe('string');
		expect(text.length).toBeGreaterThan(100);
		expect(html.length).toBeGreaterThan(100);
	});

	it('strips all inline style attributes from the HTML', () => {
		const { html } = generateOutreachEmail(makeCtx(), showcase, SECRET);
		expect(html).not.toMatch(/style=/i);
	});

	it('omits the "Hello from UndocuStudent.org" header that was on the old template', () => {
		const { html } = generateOutreachEmail(makeCtx(), showcase, SECRET);
		expect(html.toLowerCase()).not.toContain('hello from undocustudent');
	});

	it('does not wrap the sender name in <strong>', () => {
		const { html } = generateOutreachEmail(makeCtx(), showcase, SECRET);
		expect(html).not.toMatch(/<strong>\s*David Tejuosho\s*<\/strong>/);
	});

	it('text version contains no HTML tags', () => {
		const { text } = generateOutreachEmail(makeCtx(), showcase, SECRET);
		expect(text).not.toMatch(/<[a-z]+[^>]*>/i);
	});

	it('text version mentions the college name and includes showcase entries', () => {
		const { text } = generateOutreachEmail(makeCtx(), showcase, SECRET);
		expect(text).toContain('Stanford University');
		expect(text).toContain('Harvard University');
		expect(text).toContain('Yale University');
	});

	it('text version includes the view URL (plain, no token)', () => {
		const { text } = generateOutreachEmail(makeCtx(), showcase, SECRET);
		expect(text).toContain('https://undocustudent.org/college/stanford');
	});

	it('rendered outreach email includes ?t= token in the edit URL', () => {
		const { html, text } = generateOutreachEmail(
			{
				collegeId: 42,
				collegeName: 'Stanford',
				collegeDomain: 'stanford',
				recipientEmail: 'admissions@stanford.edu'
			},
			[],
			SECRET
		);
		expect(html).toMatch(/\/college\/stanford\/edit\?t=[^"&]+/);
		expect(text).toMatch(/\/college\/stanford\/edit\?t=\S+/);
	});
});

describe('generateAppreciationEmail — deliverability-friendly content', () => {
	it('returns a text/plain version alongside HTML', () => {
		const { html, text } = generateAppreciationEmail(makeCtx(), 12, SECRET);
		expect(typeof text).toBe('string');
		expect(text.length).toBeGreaterThan(50);
		expect(html.length).toBeGreaterThan(50);
	});

	it('text version contains no HTML tags', () => {
		const { text } = generateAppreciationEmail(makeCtx(), 12, SECRET);
		expect(text).not.toMatch(/<[a-z]+[^>]*>/i);
	});

	it('text version includes the response count and college name', () => {
		const { text } = generateAppreciationEmail(makeCtx(), 12, SECRET);
		expect(text).toContain('Stanford University');
		expect(text).toContain('12');
	});

	it('rendered appreciation email includes ?t= token in edit URL', () => {
		const { html, text } = generateAppreciationEmail(makeCtx(), 12, SECRET);
		expect(html).toMatch(/\/college\/stanford\/edit\?t=[^"&]+/);
		expect(text).toMatch(/\/college\/stanford\/edit\?t=\S+/);
	});
});
