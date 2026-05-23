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

	const subject = `Following up: ${sanitizeSubjectPart(college.name)}'s policies for undocumented students`;

	const text = `Hi,

I reached out a couple of weeks ago about ${college.name}'s policies for undocumented students on undocustudent.org. I wanted to follow up in case the original message got buried.

I built this directory to help undocumented students understand admissions, financial aid, and student life at prospective schools, and ${college.name}'s page is still missing verified information. Even a few details would make a meaningful difference for students researching their options.

The link below opens a pre-authorized edit form for your inbox — no account needed. It takes a few minutes.

Update ${college.name}'s page: ${editUrl}

If someone else on your team is a better fit, feel free to forward this along. And of course you can reply directly with the information and I'll add it myself.

Thanks,
${SENDER_NAME}
UndocuStudent.org
`;

	const escapedName = escapeHtml(college.name);
	const escapedSender = escapeHtml(SENDER_NAME);
	const html = `<p>Hi,</p>
<p>I reached out a couple of weeks ago about ${escapedName}'s policies for undocumented students on undocustudent.org. I wanted to follow up in case the original message got buried.</p>
<p>I built this directory to help undocumented students understand admissions, financial aid, and student life at prospective schools, and ${escapedName}'s page is still missing verified information. Even a few details would make a meaningful difference for students researching their options.</p>
<p>The link below opens a pre-authorized edit form for your inbox — no account needed. It takes a few minutes.</p>
<p><a href="${editUrl}">Update ${escapedName}'s page</a></p>
<p>If someone else on your team is a better fit, feel free to forward this along. And of course you can reply directly with the information and I'll add it myself.</p>
<p>Thanks,<br />${escapedSender}<br />UndocuStudent.org</p>
`;

	return { subject, html, text };
}
