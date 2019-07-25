login
logout

	self checkConnected.
	self stream sendCommand: ICCommand logout.
	self
		fetchNextResponse;
		close.

	^ true