get emails
updateProcess

	self emailAccounts do: [:anICEndpoint | anICEndpoint rootFolder update].
	self selectedFolder ifNotNil: [self changed: #emailsOfSelectedFolder]