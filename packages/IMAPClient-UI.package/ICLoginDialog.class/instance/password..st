accessing
password: anObject
	
	(self checkIfLastCharacterIsTab: anObject string)
		ifFalse: [password := anObject]
		ifTrue: [self changeInputField: 5].
		
	self changed: #password