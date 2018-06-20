get emails
update

	[self emailAccounts do: [:anICEndpoint |
		[anICEndpoint rootFolder update] forkAt: Processor userBackgroundPriority]] forkAndWait.
	self selectedFolder
		ifNotNil: [self changed: #emailsOfSelectedFolder]