connection
sendDirectCommand: aCommand
	
	"BreakPoint break."
	"Transcript show: 'Send: '.
	Transcript show: aCommand; cr."
	self stream sendCommand: aCommand.
	self fetchNextResponse.