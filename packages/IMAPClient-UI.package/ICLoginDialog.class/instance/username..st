accessing
username: anObject

	(self checkIfLastCharacterIsTab: anObject string)
		ifFalse: [username := anObject withBlanksTrimmed]
		ifTrue: [self changeInputField: 3].
		
	self changed: #username	