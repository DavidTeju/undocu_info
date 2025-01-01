// import { json } from '@sveltejs/kit';
// import type { RequestHandler } from '/$types';
// import prisma from '$lib/prisma';
//
// export const GET: RequestHandler = async ({ url }) => {
// 	const searchText = url.searchParams.get('searchText') || '';
// 	const state = url.searchParams.get('state') || 'all';
// 	const giveAid = url.searchParams.get('giveAid') === 'true';
//
// 	const colleges = await prisma.colleges.findMany({
// 		where: {
// 			name: {
// 				contains: searchText
// 			},
// 			...(state !== 'all' && {
// 				state: {
// 					equals: state
// 				}
// 			}),
// 			responses: {
// 				some: {
// 					...(giveAid && {
// 						response: 'true',
// 						questions: {
// 							question: 'Gives aid?'
// 						}
// 					})
// 				}
// 			}
// 		}
// 	});
//
// 	return new Response();
// };
