connection
sendCommand: aCommand

	self storedCommands add: aCommand for: self accountInfo username.
	self sendNextCommands