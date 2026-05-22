import { describe, expect, it, vi } from 'vitest';
import { applyVerificationResults, type VerificationResult } from './applyVerification';

type Fake = ReturnType<typeof makeFakeDb>;

function makeFakeDb(opts: { invalidEmails?: string[] } = {}) {
	const invalidEmails = opts.invalidEmails ?? [];
	const updateMany = vi.fn(
		async ({ where, data }: { where: { emailaddress: { in: string[] } }; data: unknown }) => {
			void data;
			return { count: where.emailaddress.in.length };
		}
	);
	const findMany = vi.fn(async () => invalidEmails.map((emailaddress) => ({ emailaddress })));
	const deleteSends = vi.fn(async () => ({ count: 0 }));
	const deleteAddrs = vi.fn(async () => ({ count: invalidEmails.length }));

	return {
		updateMany,
		findMany,
		deleteSends,
		deleteAddrs,
		prisma: {
			emailaddresses: {
				updateMany,
				findMany,
				deleteMany: deleteAddrs
			},
			email_outreach_sends: {
				deleteMany: deleteSends
			}
		} as never
	};
}

describe('applyVerificationResults', () => {
	it('batches updates by (status, score) instead of one update per email', async () => {
		const fake: Fake = makeFakeDb();
		const results: VerificationResult[] = [
			{ email: 'a@x.com', status: 'safe', score: 100 },
			{ email: 'b@x.com', status: 'safe', score: 100 },
			{ email: 'c@x.com', status: 'safe', score: 90 },
			{ email: 'd@x.com', status: 'catch_all', score: null },
			{ email: 'e@x.com', status: 'catch_all', score: null }
		];

		await applyVerificationResults(fake.prisma, results);

		// 3 unique (status, score) tuples → 3 updateMany calls (not 5).
		expect(fake.updateMany).toHaveBeenCalledTimes(3);

		type UpdateArg = {
			where: { emailaddress: { in: string[] } };
			data: { verification_status: string; verification_score: number | null };
		};
		const calls = fake.updateMany.mock.calls.map(([arg]) => arg as UpdateArg);
		const safe100 = calls.find((c) => c.data.verification_score === 100);
		expect(safe100?.where.emailaddress.in.sort()).toEqual(['a@x.com', 'b@x.com']);
	});

	it('returns counts and respects dryRun', async () => {
		const fake: Fake = makeFakeDb({ invalidEmails: ['bad@x.com'] });
		const results: VerificationResult[] = [
			{ email: 'bad@x.com', status: 'invalid', score: 0 },
			{ email: 'good@x.com', status: 'safe', score: 95 }
		];

		const outcome = await applyVerificationResults(fake.prisma, results, { dryRun: true });

		expect(outcome.statusCounts).toEqual({ invalid: 1, safe: 1 });
		expect(outcome.persisted).toBe(2);
		expect(outcome.deleteCandidates).toEqual(['bad@x.com']);
		expect(outcome.deletedAddresses).toBe(0);
		expect(fake.deleteAddrs).not.toHaveBeenCalled();
	});

	it('skips Phase 1 when skipPersist is set', async () => {
		const fake: Fake = makeFakeDb();
		const results: VerificationResult[] = [{ email: 'a@x.com', status: 'safe', score: 90 }];

		await applyVerificationResults(fake.prisma, results, { skipPersist: true });

		expect(fake.updateMany).not.toHaveBeenCalled();
	});
});
