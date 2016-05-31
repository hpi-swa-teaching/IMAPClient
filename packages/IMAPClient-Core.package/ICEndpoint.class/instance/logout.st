message handling
logout

	self
		checkConnected;
		sendCommand: self class logoutCommand;
		fetchNextResponse;
		checkForBadRequest;
		fetchNextResponse;
		close.

	^ true