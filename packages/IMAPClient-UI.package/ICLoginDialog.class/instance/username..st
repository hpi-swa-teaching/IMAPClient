accessing
username: aText

	(self lastCharacterIsTab: aText string)
		ifFalse: [username := aText withBlanksTrimmed]
		ifTrue: [self changeToNextInputFieldFrom: (self textFieldNames indexOf: #username)].
	
	self changed: #username