action - emails
updateProcess
		
	| successful|
	successful := true.
	self emailAccounts do: [:anICEndpoint | successful := ( successful and: (
		anICEndpoint rootFolder updateAndShowProgressWith: [self progressCallback]))].
	successful ifTrue: [self updateSynchTime].
	self triggerEmailChanges