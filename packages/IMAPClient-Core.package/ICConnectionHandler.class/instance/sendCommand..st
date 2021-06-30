connection
sendCommand: aCommand
	
	| hash conOK |
	
	hash := self accountInfo hash.
	conOK := true.
	"Transcript show: 'Placed in the queue: '.
	Transcript show: aCommand; cr."
	self storedCommands add: aCommand for: self accountInfo hash.
	[conOK and: (self storedCommands isEmptyFor: hash) not] whileTrue: [
			[self sendDirectCommand: (self storedCommands getNextCommandFor: hash).
			self storedCommands popNextCommandFor: hash]
		on: Error do: [Transcript show: 'failed';cr.conOK := false]]