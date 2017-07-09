fetching
getAllUIDs

	self
	sendCommand: (self class getAllUIDs);
	fetchNextResponse.
	uids := ((((self lastResponse) at: 1) subStrings: ' ') asOrderedCollection) removeFirst; removeFirst; yourself.