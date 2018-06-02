accessing
serverPort: anObject
	
	(self checkIfLastCharacterIsTab: anObject string)
		ifFalse: [serverPort := anObject withBlanksTrimmed]
		ifTrue: [self changeInputField: 2].	
	
	self changed: #serverPort