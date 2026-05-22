import { describe, expect, it, vi } from 'vitest';
import { createReoonClient, shouldDropAddress, tierForStatus } from './reoon';

describe('tierForStatus', () => {
	it('puts safe and role_account in tier 1', () => {
		expect(tierForStatus('safe')).toBe(1);
		expect(tierForStatus('role_account')).toBe(1);
	});

	it('puts catch_all and inbox_full in tier 2', () => {
		expect(tierForStatus('catch_all')).toBe(2);
		expect(tierForStatus('inbox_full')).toBe(2);
	});

	it('puts unknown and missing verification in tier 3', () => {
		expect(tierForStatus('unknown')).toBe(3);
		expect(tierForStatus(null)).toBe(3);
		expect(tierForStatus(undefined)).toBe(3);
		expect(tierForStatus('')).toBe(3);
	});

	it('returns null for statuses that should be dropped entirely', () => {
		expect(tierForStatus('invalid')).toBeNull();
		expect(tierForStatus('disabled')).toBeNull();
		expect(tierForStatus('disposable')).toBeNull();
		expect(tierForStatus('spamtrap')).toBeNull();
	});

	it('falls back to tier 3 for unrecognized statuses', () => {
		expect(tierForStatus('some_future_status')).toBe(3);
	});
});

describe('shouldDropAddress', () => {
	it('drops only invalid and disabled per the May 2026 bounce-investigation decision', () => {
		expect(shouldDropAddress('invalid')).toBe(true);
		expect(shouldDropAddress('disabled')).toBe(true);
		expect(shouldDropAddress('disposable')).toBe(false);
		expect(shouldDropAddress('spamtrap')).toBe(false);
		expect(shouldDropAddress('catch_all')).toBe(false);
		expect(shouldDropAddress('unknown')).toBe(false);
		expect(shouldDropAddress(null)).toBe(false);
	});
});

describe('createReoonClient', () => {
	it('rejects empty API keys', () => {
		expect(() => createReoonClient('   ')).toThrow('REOON_API_KEY must be set');
	});

	it('rejects empty bulk task submissions', async () => {
		const client = createReoonClient('test-key', vi.fn());
		await expect(client.createBulkTask([])).rejects.toThrow('empty email list');
	});

	it('rejects bulk tasks above the 50,000 cap', async () => {
		const client = createReoonClient('test-key', vi.fn());
		const huge = Array.from({ length: 50_001 }, (_, i) => `t${i}@x.com`);
		await expect(client.createBulkTask(huge)).rejects.toThrow('50,000');
	});

	it('posts emails to the create-bulk endpoint and returns the task id', async () => {
		const fetchMock = vi.fn().mockResolvedValue({
			json: async () => ({ status: 'success', task_id: 42 })
		});
		const client = createReoonClient('the-key', fetchMock as unknown as typeof fetch);

		const taskId = await client.createBulkTask(['a@x.com', 'b@x.com'], 'my-task');

		expect(taskId).toBe(42);
		expect(fetchMock).toHaveBeenCalledTimes(1);
		const [url, init] = fetchMock.mock.calls[0] as [string, RequestInit];
		expect(url).toContain('/create-bulk-verification-task/');
		expect(init.method).toBe('POST');
		const body = JSON.parse(init.body as string);
		expect(body).toEqual({ name: 'my-task', emails: ['a@x.com', 'b@x.com'], key: 'the-key' });
	});

	it('truncates task name to 25 characters per Reoon limit', async () => {
		const fetchMock = vi.fn().mockResolvedValue({
			json: async () => ({ status: 'success', task_id: 1 })
		});
		const client = createReoonClient('k', fetchMock as unknown as typeof fetch);

		await client.createBulkTask(['a@x.com'], 'a-name-that-is-way-too-long-to-fit');

		const body = JSON.parse((fetchMock.mock.calls[0][1] as RequestInit).body as string);
		expect(body.name).toHaveLength(25);
	});

	it('throws when the API returns an error status', async () => {
		const fetchMock = vi.fn().mockResolvedValue({
			json: async () => ({ status: 'error', reason: 'invalid key' })
		});
		const client = createReoonClient('k', fetchMock as unknown as typeof fetch);

		await expect(client.createBulkTask(['a@x.com'])).rejects.toThrow('invalid key');
	});
});
