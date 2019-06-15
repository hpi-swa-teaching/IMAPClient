accessing
serverAddress: aText
	
	(self checkIfLastCharacterIsTab: aText string)
		ifFalse: [serverAddress := aText withBlanksTrimmed]
		ifTrue: [self changeInputField: 2].
		
	self changed: #serverAddress