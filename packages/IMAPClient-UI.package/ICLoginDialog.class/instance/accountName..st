accessing
accountName: aText

	(self lastCharacterIsTab: aText string)
		ifFalse: [accountName := aText string]
		ifTrue: [self changeInputField: 1].
	
	self changed: #accountName