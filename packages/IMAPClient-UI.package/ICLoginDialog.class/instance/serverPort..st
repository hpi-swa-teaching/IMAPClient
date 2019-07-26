accessing
serverPort: aText
	
	(aText isString) 
		ifTrue: [Transcript show: aText].
	
	(self lastCharacterIsTab: aText string)
		ifFalse: [serverPort := aText withBlanksTrimmed]
		ifTrue: [self changeInputField: 3].	
	
	self changed: #serverPort