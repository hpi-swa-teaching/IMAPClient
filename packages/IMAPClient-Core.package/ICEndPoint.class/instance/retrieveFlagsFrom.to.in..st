protocol handling - fetch
retrieveFlagsFrom: anUID to: anotherUID in: aFolder
	
	self sendCommand: (ICCommand fetchFlagsForUIDsFrom: anUID to: anotherUID).
		
	self parseFetchedFlagsAndPopulate: aFolder