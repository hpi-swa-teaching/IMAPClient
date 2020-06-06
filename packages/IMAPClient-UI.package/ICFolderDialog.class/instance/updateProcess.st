get emails
updateProcess
		
	self emailAccounts do: [:anICEndpoint |
		anICEndpoint rootFolder update: [self progressCallback]].
	self triggerEmailChanges