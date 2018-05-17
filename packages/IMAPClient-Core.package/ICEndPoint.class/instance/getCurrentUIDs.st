fetching
getCurrentUIDs

	self halt.
	self
		sendCommand: self class getAllUIDs;
		 fetchNextResponse.
	self uids: (((self lastResponse at: 1) subStrings: ' ') asOrderedCollection 
				removeFirst;
				removeFirst; 
				yourself)