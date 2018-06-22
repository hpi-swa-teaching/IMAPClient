delete
expungeEmail: anEmail

	self sendCommand: (self class expungeEmail: anEmail messageID).	
	self fetchNextResponse
