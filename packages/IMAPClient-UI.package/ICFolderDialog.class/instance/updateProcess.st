action - emails
updateProcess

	| successful |
	successful := true.
	[self emailAccounts do: [:anICEndpoint | successful := successful and: [anICEndpoint rootFolder updateAndShowProgressWith: [self progressCallback] loadedEmails: anICEndpoint collectAllEmails]]]
		on: ConnectionClosed
		do: [:error | self inform: error asString].
	
	successful ifTrue: [self updateSynchTime].
	self triggerEmailChanges