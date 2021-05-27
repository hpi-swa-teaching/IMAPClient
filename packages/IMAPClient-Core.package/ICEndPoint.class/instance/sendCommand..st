connection
sendCommand: aCommand
	
	self isConnected 
		ifTrue: [ self sendStoredCommands.
				self stream sendCommand: aCommand ]
		ifFalse: [ self storedCommands add: aCommand for: self accountInfo hash ]