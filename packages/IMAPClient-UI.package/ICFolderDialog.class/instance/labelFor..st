email selection
labelFor: anICEmail

	| fromCollection label flags |
	fromCollection := anICEmail from findBetweenSubStrs: '<>'.
	label := (anICEmail subject truncateTo: 80),
	Character tab,
	(fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: ['']]),
	Character tab,
	anICEmail date.

	flags := anICEmail retrieveFlags.
	(flags at: #seen) 
		ifFalse: [label := '[UNSEEN] ', label].
	(flags at: #flagged) 
		ifTrue: [label := '[FLAGGED] ', label].	
	^ label