connection
sendCommand: aCommand
	
	| hash conOK help |
	
	hash := self accountInfo hash.
	conOK := true.
	
	self storedCommands add: aCommand for: self accountInfo hash.
	BreakPoint break.
	help:= conOK and: (self storedCommands isEmptyFor: hash) not.
	[conOK and: (self storedCommands isEmptyFor: hash) not] whileTrue: [
			[self sendDirectCommand: (self storedCommands getNextCommandFor: hash).
			self storedCommands popNextCommandFor: hash]
		on: Error do: [conOK := false]]