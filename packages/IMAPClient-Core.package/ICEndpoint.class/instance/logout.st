message handling
logout

	self checkConnected.
	self stream
		sendCommand: self class logoutCommand;
		nextResponse.
	self
		checkForBadRequest;
		close.

	^ true