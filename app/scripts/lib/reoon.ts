/**
 * Reoon Email Verifier API client.
 *
 * Docs: https://www.reoon.com/articles/api-documentation-of-reoon-email-verifier/
 */

const BASE_URL = 'https://emailverifier.reoon.com/api/v1';

export type ReoonStatus =
	| 'safe'
	| 'role_account'
	| 'catch_all'
	| 'inbox_full'
	| 'unknown'
	| 'invalid'
	| 'disabled'
	| 'disposable'
	| 'spamtrap';

export interface ReoonPowerResult {
	email: string;
	status: ReoonStatus;
	overall_score?: number;
	username?: string;
	domain?: string;
	is_safe_to_send: boolean;
	is_valid_syntax: boolean;
	is_disposable: boolean;
	is_role_account: boolean;
	can_connect_smtp?: boolean;
	has_inbox_full: boolean;
	is_catch_all: boolean;
	is_deliverable?: boolean;
	is_disabled: boolean;
	is_spamtrap: boolean | 'None';
	is_free_email?: boolean;
	mx_accepts_mail: boolean;
	mx_records?: string[];
}

interface CreateBulkTaskResponse {
	status: 'success' | 'error';
	task_id?: number;
	count_submitted?: number;
	count_duplicates_removed?: number;
	count_rejected_emails?: number;
	count_processing?: number;
	reason?: string;
}

interface GetBulkResultResponse {
	task_id: string | number;
	name?: string;
	status: 'waiting' | 'running' | 'completed' | 'file_not_found' | 'file_loading_error' | string;
	count_total?: number;
	count_checked?: number;
	progress_percentage?: number;
	results?: Record<string, ReoonPowerResult>;
	reason?: string;
}

export interface ReoonClient {
	createBulkTask(emails: string[], name?: string): Promise<number>;
	getBulkResult(taskId: number): Promise<GetBulkResultResponse>;
	waitForBulkResult(taskId: number, opts?: PollOptions): Promise<Record<string, ReoonPowerResult>>;
}

interface PollOptions {
	intervalMs?: number;
	timeoutMs?: number;
	onProgress?: (progress: number, checked: number, total: number) => void;
}

export function createReoonClient(apiKey: string, fetchImpl: typeof fetch = fetch): ReoonClient {
	if (!apiKey.trim()) {
		throw new Error('REOON_API_KEY must be set');
	}

	return {
		async createBulkTask(emails, name = 'verify-queue') {
			if (emails.length === 0) {
				throw new Error('createBulkTask called with empty email list');
			}
			if (emails.length > 50_000) {
				throw new Error(`Reoon bulk task limit is 50,000 emails (got ${emails.length})`);
			}

			const res = await fetchImpl(`${BASE_URL}/create-bulk-verification-task/`, {
				method: 'POST',
				headers: { 'Content-Type': 'application/json' },
				body: JSON.stringify({ name: name.slice(0, 25), emails, key: apiKey })
			});

			const body = (await res.json()) as CreateBulkTaskResponse;
			if (body.status !== 'success' || typeof body.task_id !== 'number') {
				throw new Error(`Reoon bulk task creation failed: ${body.reason ?? JSON.stringify(body)}`);
			}
			return body.task_id;
		},

		async getBulkResult(taskId) {
			const url = `${BASE_URL}/get-result-bulk-verification-task/?key=${encodeURIComponent(apiKey)}&task_id=${taskId}`;
			const res = await fetchImpl(url);
			return (await res.json()) as GetBulkResultResponse;
		},

		async waitForBulkResult(taskId, opts = {}) {
			const intervalMs = opts.intervalMs ?? 5_000;
			const timeoutMs = opts.timeoutMs ?? 30 * 60_000;
			const startedAt = Date.now();

			while (true) {
				const result = await this.getBulkResult(taskId);

				if (result.status === 'completed' && result.results) {
					return result.results;
				}

				if (
					result.status === 'file_not_found' ||
					result.status === 'file_loading_error' ||
					(result as { status?: string }).status === 'error'
				) {
					throw new Error(`Reoon task ${taskId} failed: ${result.reason ?? result.status}`);
				}

				if (Date.now() - startedAt > timeoutMs) {
					throw new Error(`Reoon task ${taskId} did not complete within ${timeoutMs}ms`);
				}

				opts.onProgress?.(
					result.progress_percentage ?? 0,
					result.count_checked ?? 0,
					result.count_total ?? 0
				);

				await new Promise((resolve) => setTimeout(resolve, intervalMs));
			}
		}
	};
}

export type VerificationTier = 1 | 2 | 3;

/**
 * Map a Reoon power-mode status to a sending priority tier.
 *   Tier 1 — safe, role_account: high confidence deliverable
 *   Tier 2 — catch_all, inbox_full: domain accepts but address-level uncertain
 *   Tier 3 — unknown (or no verification record): cannot assess
 *
 * invalid/disabled/disposable/spamtrap are returned as null — these addresses
 * should be removed entirely, not sent to in any tier.
 */
export function tierForStatus(status: string | null | undefined): VerificationTier | null {
	switch (status) {
		case 'safe':
		case 'role_account':
			return 1;
		case 'catch_all':
		case 'inbox_full':
			return 2;
		case 'unknown':
		case null:
		case undefined:
		case '':
			return 3;
		case 'invalid':
		case 'disabled':
		case 'disposable':
		case 'spamtrap':
			return null;
		default:
			return 3;
	}
}

/**
 * Returns true if a Reoon-flagged address should be deleted entirely (from
 * emailaddresses + email_outreach_sends) rather than just deprioritized.
 */
export function shouldDropAddress(status: string | null | undefined): boolean {
	return status === 'invalid' || status === 'disabled';
}
