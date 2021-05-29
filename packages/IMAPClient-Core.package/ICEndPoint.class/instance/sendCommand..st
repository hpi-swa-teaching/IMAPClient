connection
sendCommand: aCommand
	
	| hash conOK |
	
	hash := self accountInfo hash.
	conOK := true.
	
	self storedCommands add: aCommand for: self accountInfo hash.
	
	"Transcript show: 'Now I send a command '.
	Transcript show: (self storedCommands at: hash) size; cr."
	
	[ conOK and: (self storedCommands isEmptyFor: hash) not ] whileTrue: [
			[self sendDirectCommand: (self storedCommands getNextCommandFor: hash).
			self storedCommands popNextCommandFor: hash]
		on: Error do: [conOK := false". BreakPoint break."]]