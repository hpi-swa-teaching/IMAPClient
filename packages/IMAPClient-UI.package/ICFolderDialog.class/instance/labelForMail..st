email selection
labelForMail: anICEmail

	^	((anICEmail flagged) 
			ifTrue: '*' 
			ifFalse: ' '),
		Character tab, 
		((anICEmail subject ifEmpty: [ICEmailDialog defaultSubject]) truncateTo: 80),
		Character tab,
		anICEmail sender,
		Character tab,
		anICEmail dateFormatted