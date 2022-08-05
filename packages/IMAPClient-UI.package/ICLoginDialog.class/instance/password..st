accessing
password: aText

	(self lastCharacterIsTab: aText string)
		ifFalse: [password := aText]
		ifTrue: [self changeToNextInputFieldFrom: (self textFieldNames indexOf: #password)].
	
	self changed: #password