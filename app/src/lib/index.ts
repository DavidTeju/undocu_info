// place files you want to import through the `$lib` alias in this folder.
const questions = {
	admission: [
		'Are undocumented students considered international or domestic?',
		'Are you need-blind for undocumented students?',
		'Are there any restrictions on merit aid for undocumented students at your school?',
		'Does your school provide merit aid specially for undocumented students?',
		'Would you advise an undocumented student to reveal their status in their application or subsequent email?',
		'How would their status affect their application?',
		'Is there a special contact point for undocumented students?',
		'What other piece of advice would you give an undocumented student hoping for admission at your school?',
		'Other admissions information'
	],
	financial: [
		'Are undocumented students eligible for need-based aid?',
		'What financial aid application should undocumented students send? The CSS, FAFSA, ISFAA or a form unique to your school?',
		'If need-based aid is not available, is there a feasible path undocumented students can take to pay for their education with stackable merit scholarships, loans and/or grants from your school?',
		'What would be the requirements for such scholarships and what would a student\'s chances of getting them?',
		'Other financial aid information'
	],
	life: [
		'Are there organized groups or clubs comprised of or advocating for undocumented students in your school?',
		'How often does your office receive applications from undocumented students?',
		'Does your school allow Immigration and Customs Enforcement (ICE) officers onto campus without a warrant?',
		'Does the campus police enforce immigration law?',
		'Does your school share student immigration status with ICE?',
		'Does your school provide distance-learning options for deported students to complete their degrees?',
		'Does your school provide confidential legal support to students with immigration law questions and issues?',
		'Other student life information'
	],
	other: ['Has undocu-student webpage', 'Other information', 'Special contact', 'Gives aid?']
} as const;

interface Location {
	city: string | null;
	state: string | null;
}

interface School {
	'College Name': string;
	emails: Array<string>;
	domain: string;
	location: Location;
	responses: {
		[K in 'admission' | 'financial' | 'life' | 'other']: {
			[key in (typeof questions)[K][number]]?: key extends 'Gives aid?'
				? boolean // 'Gives aid?' is a boolean
				: string | null;
		};
	};
}

const questionsCategoryToString = {
	admission: 'Admissions',
	financial: 'Financial Aid',
	student_life: 'Student Life',
	other: 'Other'
};

export { questions, type School };
