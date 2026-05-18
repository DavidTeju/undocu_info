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
