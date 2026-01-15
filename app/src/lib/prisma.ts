// src/lib/prisma.ts

import { env } from '$env/dynamic/private';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient({
	datasources: {
		db: {
			url: env.DATABASE_URL
		}
	}
});

export default prisma;
