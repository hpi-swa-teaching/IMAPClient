delete
deleteEmail: anEmailID

	self sendCommand: (self class deleteEmail: anEmailID).	
	self fetchNextResponse.