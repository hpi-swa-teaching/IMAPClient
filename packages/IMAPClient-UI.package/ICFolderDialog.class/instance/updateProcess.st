get emails
updateProcess
		
	self emailAccounts do: [:anICEndpoint | 
		anICEndpoint rootFolder update: [self getProgress].
	].

	self selectedFolder ifNotNil: [self changed: #emailsOfSelectedFolder].
	self
		changed: #childFolders;
		changed: #emailAccounts