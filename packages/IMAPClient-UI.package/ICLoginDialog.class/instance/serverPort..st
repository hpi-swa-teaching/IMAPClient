accessing
serverPort: anObject
	
	(self checkIfLastCharacterIsTab: anObject string)
		ifFalse: [serverPort := anObject]
		ifTrue: [self changeInputField: 2].	
	
	self changed: #serverPort