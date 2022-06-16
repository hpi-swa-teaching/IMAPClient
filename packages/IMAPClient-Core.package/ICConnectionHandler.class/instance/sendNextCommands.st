connection
sendNextCommands

	| hash isConnected |
	hash := self accountInfo username.
	isConnected := true.
	[isConnected and: (self storedCommands isEmptyFor: hash) not] whileTrue: [
		[
			self sendDirectCommand: (self storedCommands getNextCommandFor: hash).
			self storedCommands popNextCommandFor: hash]
			on: Error
			do: [isConnected := false]]