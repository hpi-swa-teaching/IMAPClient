connection
sendDirectCommand: aCommand
	
	self stream sendCommand: aCommand.
	self fetchNextResponse