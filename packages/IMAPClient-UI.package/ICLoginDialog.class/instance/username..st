accessing
username: aText

	(self lastCharacterIsTab: aText string)
		ifFalse: [username := aText withBlanksTrimmed]
		ifTrue: [self changeInputField: 4].
	
	self changed: #username