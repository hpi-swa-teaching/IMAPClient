accessing
serverAddress: aText
	
	(self lastCharacterIsTab: aText string)
		ifFalse: [serverAddress := aText withBlanksTrimmed]
		ifTrue: [self changeInputField: 2].
		
	self changed: #serverAddress