message handling
ping

	self checkConnected.
	self stream
		sendCommand: self class noopCommand;
		nextResponse.
	self checkForBadRequest.	
	^ true