<script lang="ts">
	import type { School } from '$lib';
	import schools from '$lib/college_data.json';

	let colleges: { [key: string]: School } = schools;

	// let college: School = {
	// 	name: 'Colorado College',
	// 	emails: ['admission@coloradocollege.edu'],
	// 	domain: 'coloradocollege',
	// 	location: {
	// 		city: 'Colorado Springs',
	// 		state: 'CO'
	// 	},
	// 	responses: {
	// 		admission: {
	// 			'are undocumented students considered international or domestic?':
	// 				'Undocumented students are considered domestic students, not international, if they will graduate from a US secondary (high school) institution.',
	// 			'are you need-blind for undocumented students?':
	// 				'As with our general applicant pool, we are not need-blind for undocumented students.',
	// 			'are there any restrictions on merit aid for undocumented students at your school?':
	// 				'The college will consider merit aid as part of our wholistic review process, as we do for ALL applicants to CC.',
	// 			'does your school provide merit aid specially for undocumented students?':
	// 				'Financial Aid to fully meet 100% of demonstrated need for undocumented students are pulled from special funds, which include grants and merit aid special for undocumented students.',
	// 			'how would their status affect their application?':
	// 				'Citizenship status would have no bearing on their application/candidacy to Colorado College.',
	// 			'what other piece of advice would you give an undocumented student hoping for admission at your school?':
	// 				'Apply with confidence to Colorado College, and now we are affirmative for undocumented students! We are committed to serving all students in the application process, regardless of citizenship status.',
	// 			'other admissions information':
	// 				"hello, go to https://davidteju.dev and get a t-shirt"			},
	// 		financial: {
	// 			'other financial aid information':
	// 				'Please contact the Office of Financial Aid for any additional financial related questions:\r\n\r\nPhone: (719) 389-6651\r\nToll-free: (800) 260-6458\r\nEmail:financialaid@coloradocollege.edu'
	// 		},
	// 		student_life: {
	// 			'how often does your office receive applications from undocumented students?':
	// 				'Often. Each year we received dozens of applications from undocumented students to Colorado College.',
	// 			'does your school allow immigration and customs enforcement (ice) officers onto campus without a warrant?':
	// 				'No.\r\n\r\nThere are multiple student life offices across campus that have resources for undocumented and DACA students:\r\n-Career Center: https://www.coloradocollege.edu/offices/careercenter/begin-your-search/resources-for-undocumented-and-daca-students.html\r\n\r\n-The Butler Center: https://www.coloradocollege.edu/offices/butlercenter/education-resources/index.html\r\n\r\nThe Global Education and Field Study (https://www.coloradocollege.edu/offices/globalandfieldstudy/international-students/index.html) office supports international students (immigration law questions, campus support and resources, etc.). You can contact their office directly at: isss@coloradocollege.edu'
	// 		},
	// 		other: {
	// 			'special contact':
	// 				'Pedro Ramirez, Associated Director of Outreach & Access | pramirez@coloradocollege.edu | 719-389-6944',
	// 			'gives aid?': 'false'
	// 		}
	// 	}
	// };
</script>

<h2>Colleges</h2>

{#each Object.entries(colleges) as [domain, college]}
	<a href={`/college/${domain}`}>
		<h3>{college['College Name']}</h3>
	</a>
{/each}