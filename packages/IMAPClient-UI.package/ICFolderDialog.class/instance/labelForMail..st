email selection
labelForMail: anICEmail

	| fromCollection subject label |

	fromCollection := anICEmail from findBetweenSubStrs: '<>'.
	
	subject := anICEmail subject ifEmpty: [ICEmailDialog defaultSubject].
	
	label := (subject truncateTo: 80),
		Character tab,
		(fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: ['']]),
		Character tab,
		anICEmail dateFormatted.
	
	(anICEmail flagged) ifTrue: [label := '[FLAGGED] ', label].	
	
	^ label