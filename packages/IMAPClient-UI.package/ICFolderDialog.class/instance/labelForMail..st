email selection
labelForMail: anICEmail

	| fromCollection label |

	fromCollection := anICEmail from findBetweenSubStrs: '<>'.
	label := (anICEmail subject truncateTo: 80),
	Character tab,
	(fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: ['']]),
	Character tab,
	anICEmail getDateFormatted.
	
	^ label