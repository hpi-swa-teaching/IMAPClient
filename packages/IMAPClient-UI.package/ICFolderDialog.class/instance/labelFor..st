email selection
labelFor: email

	| fromCollection label flags |
	fromCollection := email from findBetweenSubStrs: '<>'.
	label := (email subject truncateTo: 80),
	Character tab,
	(fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: ['']]),
	Character tab,
	email date.

	flags := email retrieveFlags.
	(flags at: #seen) 
		ifFalse: [label := '[UNSEEN] ', label].
	(flags at: #flagged) 
		ifTrue: [label := '[FLAGGED] ', label].	
	^ label			