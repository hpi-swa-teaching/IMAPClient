message handling
ping

	self checkConnected.
	self stream sendCommand: self class noopCommand.
	self fetchNextResponse.	
	^ true