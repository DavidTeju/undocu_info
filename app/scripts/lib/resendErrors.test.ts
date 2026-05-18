import { describe, expect, it } from 'vitest';
import { formatResendSendError, getResendSendErrorDetails } from './resendErrors';

describe('Resend send-time error formatting', () => {
	it('preserves structured SDK error fields', () => {
		const details = getResendSendErrorDetails({
			message: 'Invalid from address',
			name: 'invalid_from_address',
			statusCode: 422
		});

		expect(details).toEqual({
			message: 'Invalid from address',
			name: 'invalid_from_address',
			statusCode: 422
		});
	});

	it('formats send API errors as failed attempts, not bounces', () => {
		const formatted = formatResendSendError({
			message: 'Recipient rejected by validation',
			name: 'validation_error',
			statusCode: 400
		});

		expect(formatted).toContain('"name":"validation_error"');
		expect(formatted).toContain('"statusCode":400');
		expect(formatted).not.toContain('"bounced"');
	});
});
