fetching
retrieveFlagsFrom: anUID to: anotherUID in: aFolder
	
	self 
		sendCommand: (ICCommand fetchFlagsWithUIDFrom: anUID to: anotherUID);
		fetchNextResponse.
		
	self parseFetchFlagsOnly: aFolder