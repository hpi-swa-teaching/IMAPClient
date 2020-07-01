email selection
labelForMail: anICEmail

	| subject |
	
	subject := anICEmail subject ifEmpty: [ICEmailDialog defaultSubject].
	
	^	((anICEmail flagged) ifTrue: '*' ifFalse: ' '),
		Character tab, 
		(subject truncateTo: 80),
		Character tab,
		anICEmail sender,
		Character tab,
		anICEmail dateFormatted