accessing
serverAddress: anObject
	
	(self checkIfLastCharacterIsTab: anObject string)
		ifFalse: [serverAddress := anObject withBlanksTrimmed]
		ifTrue: [self changeInputField: 2].
			
	self changed: #serverAddress