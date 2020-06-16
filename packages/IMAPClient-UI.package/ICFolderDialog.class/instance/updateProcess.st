get emails
updateProcess
		
	self emailAccounts do: [:anICEndpoint |
		anICEndpoint rootFolder updateAndShowProgressWith: [self progressCallback]].

	self triggerEmailChanges