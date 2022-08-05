accessing
serverAddress: aText

	(self lastCharacterIsTab: aText string)
		ifFalse: [serverAddress := aText withBlanksTrimmed]
		ifTrue: [self changeToNextInputFieldFrom: (self textFieldNames indexOf: #serverAddress)].
	
	self changed: #serverAddress