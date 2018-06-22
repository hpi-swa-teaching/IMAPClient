get emails
update

	[self emailAccounts do: [:anICEndpoint |
		anICEndpoint rootFolder update]] forkAndWait.
	self selectedFolder
		ifNotNil: [self changed: #emailsOfSelectedFolder]