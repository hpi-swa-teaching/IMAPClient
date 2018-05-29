accessing
serverAddress: anObject
	
	(self checkIfLastCharacterIsTab: anObject string)
		ifFalse: [serverAddress := anObject withBlanksTrimmed]
		ifTrue: [self changeInputField: 1].
			
	self changed: #serverAddress