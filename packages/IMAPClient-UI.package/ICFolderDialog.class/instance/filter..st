get emails
filter: aCharacter

	aCharacter = $+
		ifTrue: [self filterString: '']
		ifFalse: [self filterString: (self filterString , aCharacter)].
	self changed: #emailsOfSelectedFolder