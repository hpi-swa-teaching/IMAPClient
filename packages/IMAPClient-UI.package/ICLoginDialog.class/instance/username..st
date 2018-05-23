accessing
username: anObject

	(self checkIfLastCharacterIsTab: anObject string)
		ifFalse: [username := anObject]
		ifTrue: [self changeInputField: 3].
		
	self changed: #username	