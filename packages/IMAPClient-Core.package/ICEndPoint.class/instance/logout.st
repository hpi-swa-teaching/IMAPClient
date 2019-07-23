login
logout

	self checkConnected.
	self stream sendCommand: ICCommand logoutCommand.
	self
		fetchNextResponse;
		close.

	^ true