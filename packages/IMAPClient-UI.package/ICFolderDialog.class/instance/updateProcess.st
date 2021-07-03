action - emails
updateProcess
		
	| successful |
	successful := false.
	[self emailAccounts do: [:anICEndpoint | successful := ( successful and: (anICEndpoint rootFolder updateAndShowProgressWith: [self progressCallback]))]]
  on: NetworkError
	do: [:e | self inform: e asString].
  
	successful ifFalse: [self updateSynchTime].
	self triggerEmailChanges