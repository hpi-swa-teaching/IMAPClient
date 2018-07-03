stateTransitions
read11: aChar 
	aChar == ${
		ifTrue: [self state: 12]
		ifFalse: [currentMail := currentMail , aChar]
	