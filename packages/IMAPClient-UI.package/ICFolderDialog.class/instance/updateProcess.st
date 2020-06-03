get emails
updateProcess
		
	self emailAccounts do: [:anICEndpoint |
		anICEndpoint rootFolder updateAndShowProgressWith: [self progressCallback]].

	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts