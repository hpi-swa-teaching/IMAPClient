message handling
ping

	self checkConnected.
	self sendCommand: ICCommand noopCommand.
	self fetchNextResponse.	
	^ true