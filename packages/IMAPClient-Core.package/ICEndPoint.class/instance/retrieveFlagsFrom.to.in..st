fetching
retrieveFlagsFrom: anUID to: anotherUID in: aFolder
	
	self 
		sendCommand: (ICCommand fetchFlagsForUIDFrom: anUID to: anotherUID);
		fetchNextResponse.
		
	self parseFetchFlagsOnly: aFolder