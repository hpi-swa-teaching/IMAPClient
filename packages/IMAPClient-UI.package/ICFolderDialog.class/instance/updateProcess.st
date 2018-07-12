get emails
updateProcess
		
	self emailAccounts do: [:anICEndpoint |
		anICEndpoint rootFolder update: [self progressCallback]].

	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts