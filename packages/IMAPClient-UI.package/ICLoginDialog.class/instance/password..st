accessing
password: anObject
	
	(self checkIfLastCharacterIsTab: anObject string)
		ifFalse: [password := anObject]
		ifTrue: [self changeInputField: 4].
		
	self changed: #password