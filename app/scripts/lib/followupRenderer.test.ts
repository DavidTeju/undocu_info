import { describe, expect, it } from 'vitest';
import { generateFollowupEmail } from './followupRenderer';

const COLLEGE = { id: 42, name: 'Stanford University', domain: 'stanford' };
const RECIPIENT = 'admissions@stanford.edu';
const SECRET = 'test-secret';

describe('generateFollowupEmail — subject sanitization', () => {
	it('strips CRLF from college name in subject', () => {
		const malicious = { id: 1, name: 'Evil U\r\nBcc: a@b.com', domain: 'evil' };
		const { subject } = generateFollowupEmail(malicious, RECIPIENT, SECRET);
		expect(subject).not.toMatch(/[\r\n]/);
	});

	it('collapses tabs in subject', () => {
		const tabbed = { id: 1, name: 'Tab\tU', domain: 'tab' };
		const { subject } = generateFollowupEmail(tabbed, RECIPIENT, SECRET);
		expect(subject).not.toMatch(/\t/);
		expect(subject).toContain('Tab U');
	});
});

describe('generateFollowupEmail — edit URL inclusion', () => {
	it('text body contains the edit URL with ?t= present', () => {
		const { text } = generateFollowupEmail(COLLEGE, RECIPIENT, SECRET);
		expect(text).toMatch(/https:\/\/undocustudent\.org\/college\/stanford\/edit\?t=/);
	});

	it('html body contains the same edit URL', () => {
		const { html, text } = generateFollowupEmail(COLLEGE, RECIPIENT, SECRET);
		const match = text.match(/https:\/\/undocustudent\.org\/college\/stanford\/edit\?t=\S+/);
		expect(match).not.toBeNull();
		const editUrl = match![0];
		expect(html).toContain(editUrl);
	});
});

describe('generateFollowupEmail — determinism', () => {
	it('returns identical subject and bodies for identical inputs', () => {
		const a = generateFollowupEmail(COLLEGE, RECIPIENT, SECRET);
		const b = generateFollowupEmail(COLLEGE, RECIPIENT, SECRET);
		expect(a.subject).toBe(b.subject);
		expect(a.html).toBe(b.html);
		expect(a.text).toBe(b.text);
	});
});
