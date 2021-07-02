connection
sendCommand: aCommand 
	self storedCommands add: aCommand for: self accountInfo hash.    
	self sendNextCommands