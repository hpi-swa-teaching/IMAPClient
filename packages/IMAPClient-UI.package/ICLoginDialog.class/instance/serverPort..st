accessing
serverPort: aText

	(self lastCharacterIsTab: aText string)
		ifFalse: [serverPort := aText withBlanksTrimmed]
		ifTrue: [self changeToNextInputFieldFrom: (self textFieldNames indexOf: #serverPort)].
	
	self changed: #serverPort