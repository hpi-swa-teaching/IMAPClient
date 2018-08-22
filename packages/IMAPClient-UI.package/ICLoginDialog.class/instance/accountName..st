accessing
accountName: anObject
	
	(self checkIfLastCharacterIsTab: anObject string)
		ifFalse: [accountName := anObject string]
		ifTrue: [self changeInputField: 1].
		
	self changed: #accountName