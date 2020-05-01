fetching
retrieveFlagsFrom: anUID to: anotherUID in: aFolder
	
	self 
		sendCommand: (ICCommand fetchFlagsForUIDsFrom: anUID to: anotherUID);
		fetchNextResponse.
		
	self parseFetchedFlagsAndPopulate: aFolder