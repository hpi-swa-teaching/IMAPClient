fetching
currentUIDs

	self
		sendCommand: self class allUIDs;
		 fetchNextResponse.
		
	self 
		uids: (((self lastResponse at: 1) subStrings: ' ') asOrderedCollection 
		removeFirst;
		removeFirst; 
		yourself)