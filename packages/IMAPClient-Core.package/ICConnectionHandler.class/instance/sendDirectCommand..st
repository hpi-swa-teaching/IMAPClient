connection
sendDirectCommand: aCommand
	Transcript show: aCommand; cr.
	self stream sendCommand: aCommand.
	self fetchNextResponse