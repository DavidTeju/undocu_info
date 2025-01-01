import type { PageServerLoad } from './$types';
import prisma from '$lib/prisma';
import stateCodeData from '$lib/statecodes.json';

const stateCodes = stateCodeData as Record<string, string>;

// const defaultQueryParams = {
// 	searchText: '',
// 	state: 'all',
// 	giveAid: false
// };

export const load: PageServerLoad = async ({ url }) => {
	// const searchText = url.searchParams.get('searchText') || '';
	// const state = url.searchParams.get('state') || 'all';
	// const giveAid = url.searchParams.get('giveAid') === 'true';

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
		.sort(([stateA], [stateB]) => stateA.localeCompare(stateB))
		.map(([state, colleges]) => ({
			state,
			colleges
		})); // Map to the desired object structure


	console.log(collegesByStateSorted);

	// const colleges = await prisma.colleges.findMany({
	// 	where: {
	// 		responses: {
	// 			some: {}
	// 		}
	// 	}
	// });
	// const colleges = await prisma.colleges.findMany({
	// 	where: {
	// 		name: {
	// 			contains: searchText
	// 		},
	// 		...(state !== 'all' && {
	// 			state: {
	// 				equals: state
	// 			}
	// 		}),
	// 		responses: {
	// 			some: {
	// 				...(giveAid && {
	// 					response: 'true',
	// 					questions: {
	// 						question: 'Gives aid?'
	// 					}
	// 				})
	// 			}
	// 		}
	// 	}
	// });

	// console.log(colleges);
	// return { colleges, queryParams: { searchText, state, giveAid } };
	return { collegesByState: collegesByStateSorted };
};