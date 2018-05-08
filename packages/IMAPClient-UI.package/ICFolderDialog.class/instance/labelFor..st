email selection
labelFor: email

	| fromCollection |
	fromCollection := email from findBetweenSubStrs: '<>'.
	^ (email subject truncateTo: 80),
	Character tab,
	(fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: ['']]),
	Character tab,
	email date