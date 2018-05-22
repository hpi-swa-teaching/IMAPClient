accessing
serverAddress: anObject
	
	(self checkIfLastCharacterIsTab: anObject string)
	ifFalse: [serverAddress := anObject.
			self changed: #serverAddress]
	ifTrue: [self changeInputField: 1]	