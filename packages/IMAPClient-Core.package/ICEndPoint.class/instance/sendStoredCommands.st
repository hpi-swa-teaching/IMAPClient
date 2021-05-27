connection
sendStoredCommands

	| hash |
	
	hash := self accountInfo hash.
	[ self storedCommands isEmptyFor: hash ] whileFalse: [
		self sendCommand: (self storedCommands nextCommandFor: hash) ]