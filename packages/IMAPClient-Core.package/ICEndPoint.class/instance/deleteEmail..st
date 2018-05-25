delete
deleteEmail: anEmail

	self sendCommand: (self class deleteEmail: anEmail messageID).		
	self fetchNextResponse.