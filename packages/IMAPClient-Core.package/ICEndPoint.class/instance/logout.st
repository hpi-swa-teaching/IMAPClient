login
logout

	self checkConnected.
	self sendCommand: ICCommand logout.
	self
		fetchNextResponse;
		close.

	^ true