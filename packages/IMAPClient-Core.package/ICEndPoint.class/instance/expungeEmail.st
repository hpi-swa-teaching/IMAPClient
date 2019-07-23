delete
expungeEmail

	self sendCommand: (ICCommand expungeEmail).	
	self fetchNextResponse
