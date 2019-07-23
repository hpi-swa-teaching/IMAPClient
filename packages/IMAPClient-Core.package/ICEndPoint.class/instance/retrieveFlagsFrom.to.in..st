fetching
retrieveFlagsFrom: anUID to: anotherUID in: aFolder
	
	self 
		sendCommand: (ICCommand fetchFlagsWithUIDRange: anUID to: anotherUID);
		fetchNextResponse.
		
	self parseFetchFlagsOnly: aFolder