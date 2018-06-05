email selection
labelFor: anICEmail

	| fromCollection label flags date |
	
	date := ''.
	anICEmail date = ''
		ifFalse: [|sp| sp := DateAndTime fromSeconds: (self timeFrom: anICEmail date) + (Date newDay: 1 year: 1980 )asSeconds.
				date := ((sp dayOfMonth asString padded: #left to: 2 with: $0) ,'.', 
				(sp month asString padded: #left to: 2 with: $0), '.',
				(sp year asString padded: #left to: 2 with: $0),'  ',
				(sp hour24 asString padded: #left to: 2 with: $0),':', (sp minute asString padded: #left to: 2 with: $0)).
			].
	
	
	fromCollection := anICEmail from findBetweenSubStrs: '<>'.
	label := (anICEmail subject truncateTo: 80),
	Character tab,
	(fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: ['']]),
	Character tab,
	date.		
	
	anICEmail isFlaggable
		ifFalse: [^ label].
	flags := anICEmail retrieveFlags.
	(flags at: #seen) 
		ifFalse: [label := '[UNSEEN] ', label].
	(flags at: #flagged) 
		ifTrue: [label := '[FLAGGED] ', label].	
	^ label