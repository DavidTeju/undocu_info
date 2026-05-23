import { buildEditAuthUrl } from '../../src/lib/server/editAuthToken';
import { sanitizeSubjectPart } from './emailRenderers';

const BASE_URL = 'https://undocustudent.org';
const SENDER_NAME = 'David Tejuosho';

function escapeHtml(value: string): string {
	return value
		.replace(/&/g, '&amp;')
		.replace(/</g, '&lt;')
		.replace(/>/g, '&gt;')
		.replace(/"/g, '&quot;')
		.replace(/'/g, '&#39;');
}

export function generateFollowupEmail(
	college: { id: number; name: string; domain: string },
	recipientEmail: string,
	authSecret: string
): { subject: string; html: string; text: string } {
	const editUrl = buildEditAuthUrl(
		BASE_URL,
		`/college/${college.domain}/edit`,
		college.id,
		recipientEmail,
		authSecret
	);

	// Mirrors the original outreach subject so the follow-up threads in Gmail/Outlook.
	// Keep this in sync with generateOutreachEmail's subject in emailRenderers.ts.
	const subject = `Re: Help undocumented students learn about ${sanitizeSubjectPart(college.name)}'s policies`;

	const text = `quick follow-up to my note.

The previous edit link asked you to sign in. This one opens the form pre-authenticated for your inbox, no account needed:
${editUrl}

 Thanks!

${SENDER_NAME}
`;

	const escapedSender = escapeHtml(SENDER_NAME);
	const html = `<p>quick follow-up to my note.</p>
<p>The previous edit link asked you to sign in. This one opens the form pre-authenticated for your inbox, no account needed:</p>
<p><a href="${editUrl}">${editUrl}</a></p>
<p>Thanks!</p>
<p>${escapedSender}</p>
`;

	return { subject, html, text };
}
