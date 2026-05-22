import { beforeEach, describe, expect, it, vi } from 'vitest';
import { applyUserUnsubscribe } from './unsubscribe';

type SuppressionRow = {
	college_id: number;
	email_address: string;
	reason: string;
	source_event_type: string;
};

function makeFakeDb() {
	const suppressions: SuppressionRow[] = [];

	return {
		state: { suppressions },
		db: {
			email_outreach_suppression: {
				upsert: vi.fn(
					async ({
						where,
						create,
						update
					}: {
						where: { college_id_email_address: { college_id: number; email_address: string } };
						create: SuppressionRow;
						update: Partial<SuppressionRow>;
					}) => {
						const idx = suppressions.findIndex(
							(s) =>
								s.college_id === where.college_id_email_address.college_id &&
								s.email_address === where.college_id_email_address.email_address
						);
						if (idx === -1) {
							suppressions.push(create);
						} else {
							suppressions[idx] = { ...suppressions[idx], ...update };
						}
						return suppressions[idx === -1 ? suppressions.length - 1 : idx];
					}
				)
			}
		}
	};
}

describe('applyUserUnsubscribe', () => {
	let fake: ReturnType<typeof makeFakeDb>;

	beforeEach(() => {
		fake = makeFakeDb();
	});

	it('inserts a suppression row for the (college, email) pair', async () => {
		await applyUserUnsubscribe(fake.db as never, 42, 'admissions@stanford.edu');

		expect(fake.state.suppressions).toHaveLength(1);
		expect(fake.state.suppressions[0]).toMatchObject({
			college_id: 42,
			email_address: 'admissions@stanford.edu',
			reason: 'unsubscribed',
			source_event_type: 'user_unsubscribe'
		});
	});

	it('normalizes the email when writing the suppression', async () => {
		await applyUserUnsubscribe(fake.db as never, 42, '  Admissions@Stanford.EDU  ');

		expect(fake.state.suppressions[0].email_address).toBe('admissions@stanford.edu');
	});

	it('is idempotent — second call updates the existing row, does not duplicate', async () => {
		await applyUserUnsubscribe(fake.db as never, 42, 'admissions@stanford.edu');
		await applyUserUnsubscribe(fake.db as never, 42, 'admissions@stanford.edu');

		expect(fake.state.suppressions).toHaveLength(1);
	});

	it('writes separate suppression rows for the same email at different colleges', async () => {
		await applyUserUnsubscribe(fake.db as never, 42, 'admissions@stanford.edu');
		await applyUserUnsubscribe(fake.db as never, 99, 'admissions@stanford.edu');

		expect(fake.state.suppressions).toHaveLength(2);
	});
});
