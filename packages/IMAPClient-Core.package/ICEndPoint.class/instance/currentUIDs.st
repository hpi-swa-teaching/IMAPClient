accessing
currentUIDs

	self connectionHandler allUIDs.
	
	^ (self lastResponse first subStrings: ' ') asOrderedCollection
		removeFirst;
		removeFirst;
		yourself