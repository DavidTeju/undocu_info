import type { PageServerLoad } from './$types';
import prisma from '$lib/prisma';
import stateCodeData from '$lib/statecodes.json';

const stateCodes = stateCodeData as Record<string, string>;

function compareStateNames(stateA: string, stateB: string) {
	if (stateA === 'Unknown') return 1;
	if (stateB === 'Unknown') return -1;
	return stateA.localeCompare(stateB);
}

export const load: PageServerLoad = async () => {
	const colleges = await prisma.colleges.findMany({
		where: {
			hidden: false,
			responses: {
				some: {}
			}
		}
	});

	const collegesByState = colleges.reduce(
		(acc, college) => {
			const stateName =
				college.state && college.state in stateCodes ? stateCodes[college.state] : 'Unknown';
			if (!acc[stateName]) {
				acc[stateName] = [];
			}
			acc[stateName].push(college);
			return acc;
		},
		{} as Record<string, Array<(typeof colleges)[0]>>
	);

	const collegesByStateSorted = Object.entries(collegesByState)
		.sort(([stateA], [stateB]) => compareStateNames(stateA, stateB))
		.map(([state, colleges]) => ({
			state,
			colleges
		})); // Map to the desired object structure

	return { collegesByState: collegesByStateSorted };
};
