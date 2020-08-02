protocol handling - fetch
currentUIDs

	self
		sendCommand: ICCommand allUIDs;
		fetchNextResponse.
		
	self 
		uids: ((self lastResponse first subStrings: ' ') asOrderedCollection 
		removeFirst;
		removeFirst; 
		yourself)