action - emails
updateProcess

	| successful |
	successful := true.
	[self emailAccounts do: [:anICEndpoint | successful := successful and: [anICEndpoint rootFolder updateAndShowProgressWith: [self progressCallback] except: anICEndpoint accountSettings notSyncedFolders]]]
		on: ConnectionClosed
		do: [:error | self inform: error asString].
	
	successful ifTrue: [self updateSynchTime].
	self triggerEmailChanges