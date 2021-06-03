action - emails
updateProcess
		
	[
	self emailAccounts do: [:anICEndpoint |
		anICEndpoint rootFolder updateAndShowProgressWith: [self progressCallback]]]
	on: ConnectionClosed
	do: [:e | self inform: e asString].
	self triggerEmailChanges