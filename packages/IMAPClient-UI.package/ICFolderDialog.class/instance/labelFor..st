email selection
labelFor: email

	| fromCollection label|
	fromCollection := email from findBetweenSubStrs: '<>'.
	label := (email subject truncateTo: 80),
	Character tab,
	(fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: ['']]),
	Character tab,
	email date.
	(email seen) 
		ifFalse: [label := '[UNREAD] ', label].
	(email important) 
		ifTrue: [label := '[HIGH PRIORITY] ', label].	
	^ label			