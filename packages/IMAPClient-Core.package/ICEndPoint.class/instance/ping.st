message handling
ping

	self checkConnected.
	self sendCommand: self class noopCommand.
	self fetchNextResponse.	
	^ true