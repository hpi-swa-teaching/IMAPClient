email selection
labelFor: anICEmail

	| fromCollection label date |
	
	anICEmail date = ''
		ifFalse: [date := self formatDateAndTime: (self getMailTimeInSeconds: anICEmail date)]
		ifTrue: [date := ''].
	
	fromCollection := anICEmail from findBetweenSubStrs: '<>'.
	label := (anICEmail subject truncateTo: 80),
	Character tab,
	(fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: ['']]),
	Character tab,
	date.		
	
	anICEmail isFlaggable
		ifFalse: [^ label].
	(anICEmail seen)
		ifFalse: [label := '[UNSEEN] ', label].
	(anICEmail flagged)
		ifTrue: [label := '[FLAGGED] ', label].	
	^ label