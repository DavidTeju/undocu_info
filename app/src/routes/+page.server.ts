import type { PageServerLoad } from './$types';
import prisma from '$lib/prisma';
import stateCodeData from '$lib/statecodes.json';

const stateCodes = stateCodeData as Record<string, string>;

export const load: PageServerLoad = async () => {


	const colleges = await prisma.colleges.findMany({
		where: {
			responses: {
				some: {}
			}
		}
	});

	const collegesByState = colleges.reduce((acc, college) => {
		const stateName = college.state && college.state in stateCodes ? stateCodes[college.state] : 'Unknown';
		if (!acc[stateName]) {
			acc[stateName] = [];
		}
		acc[stateName].push(college);
		return acc;
	}, {} as Record<string, Array<typeof colleges[0]>>);

	const collegesByStateSorted = Object.entries(collegesByState)
		.sort(([stateA], [stateB]) => stateA === 'Unknown'
			? 1
			: stateB === 'Unknown'
				? -1
				: stateA.localeCompare(stateB))
		.map(([state, colleges]) => ({
			state,
			colleges
		})); // Map to the desired object structure


	return { collegesByState: collegesByStateSorted };
};