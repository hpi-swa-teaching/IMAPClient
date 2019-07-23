fetching
currentUIDs

	self
		sendCommand: ICCommand allUIDs;
		fetchNextResponse.
		
	self 
		uids: (((self lastResponse at: 1) subStrings: ' ') asOrderedCollection 
		removeFirst;
		removeFirst; 
		yourself)