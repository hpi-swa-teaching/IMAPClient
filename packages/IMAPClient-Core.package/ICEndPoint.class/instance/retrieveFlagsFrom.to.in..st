fetching
retrieveFlagsFrom: anUID to: anotherUID in: aFolder
	
	self 
		sendCommand: (self class fetchFlagsWithUIDRange: anUID to: anotherUID);
		fetchNextResponse.
		
	self parseFetchFlagsOnly: aFolder.