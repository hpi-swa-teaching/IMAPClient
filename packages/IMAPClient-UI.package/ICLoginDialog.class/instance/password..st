accessing
password: aText
	
	(self checkIfLastCharacterIsTab: aText string)
		ifFalse: [password := aText]
		ifTrue: [self changeInputField: 5].
		
	self changed: #password