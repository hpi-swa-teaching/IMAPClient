action - emails
updateProcess

	| successful |
	successful := true.
	[self emailAccounts do: [:anICEndPoint | successful := successful and: [self updateEndPoint: anICEndPoint]]]
		on: ConnectionClosed
		do: [:error | self inform: error asString].
	successful ifTrue: [self updateSynchTime].
	
	self triggerEmailChanges