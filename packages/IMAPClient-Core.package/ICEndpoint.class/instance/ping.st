message handling
ping

	self 
		checkConnected;
		sendCommand: self class noopCommand;
		fetchNextResponse;
		checkForBadRequest.
		
	^ true