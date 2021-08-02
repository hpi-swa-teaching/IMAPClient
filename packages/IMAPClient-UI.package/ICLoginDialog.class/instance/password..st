accessing
password: aText
	
	(self lastCharacterIsTab: aText string)
		ifFalse: [password := aText]
		ifTrue: [self changeInputField: 5].
		
	self changed: #password