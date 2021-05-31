action
addEmail: aString
	
	self addAllFirstUnlessAlreadyPresent: {aString} asOrderedCollection
