connection
ping

	self checkConnected.
	self sendCommand: ICCommand noop.
	self fetchNextResponse.	
	^ true