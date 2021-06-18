connection
sendCommand: aCommand
	
	| hash conOK |
	
	hash := self accountInfo hash.
	conOK := true.
	
	self storedCommands add: aCommand for: self accountInfo hash.
	
	[conOK and: (self storedCommands isEmptyFor: hash) not] whileTrue: [
			[self sendDirectCommand: (self storedCommands getNextCommandFor: hash).
			self storedCommands popNextCommandFor: hash]
		on: Error do: [conOK := false]]