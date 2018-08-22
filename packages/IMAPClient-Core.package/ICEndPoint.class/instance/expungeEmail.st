delete
expungeEmail

	self sendCommand: (self class expungeEmail).	
	self fetchNextResponse
