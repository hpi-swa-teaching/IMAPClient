accessing
username: anObject

	(self checkIfLastCharacterIsTab: anObject string)
		ifFalse: [username := anObject withBlanksTrimmed]
		ifTrue: [self changeInputField: 4].
		
	self changed: #username