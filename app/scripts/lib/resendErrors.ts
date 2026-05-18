export interface ResendSendErrorDetails {
	message: string;
	name?: string;
	statusCode?: number | null;
}

function isRecord(value: unknown): value is Record<string, unknown> {
	return typeof value === 'object' && value !== null;
}

export function getResendSendErrorDetails(error: unknown): ResendSendErrorDetails {
	if (isRecord(error)) {
		const message =
			typeof error.message === 'string' && error.message.trim()
				? error.message
				: 'Unknown Resend send error';
		const details: ResendSendErrorDetails = { message };

		if (typeof error.name === 'string' && error.name.trim()) {
			details.name = error.name;
		}

		if (typeof error.statusCode === 'number' || error.statusCode === null) {
			details.statusCode = error.statusCode;
		}

		return details;
	}

	if (error instanceof Error) {
		return { message: error.message || 'Unknown Resend send error', name: error.name };
	}

	return { message: 'Unknown Resend send error' };
}

export function formatResendSendError(error: unknown): string {
	return `Resend send failed: ${JSON.stringify(getResendSendErrorDetails(error))}`;
}
