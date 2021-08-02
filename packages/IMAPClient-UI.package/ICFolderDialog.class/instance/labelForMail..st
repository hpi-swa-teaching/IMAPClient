accessing - email
labelForMail: anEmail

	^ (anEmail flagged
			ifTrue: ['*'] 
			ifFalse: [' ']),
		Character tab, 
		((anEmail subject ifEmpty: [ICEmailDialog defaultSubject]) truncateTo: 80),
		Character tab,
		anEmail sender,
		Character tab,
		anEmail dateFormatted