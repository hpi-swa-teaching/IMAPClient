login
logout

	self checkConnected.
	self stream sendCommand: self class logoutCommand.
	self
		fetchNextResponse;
		close.

	^ true