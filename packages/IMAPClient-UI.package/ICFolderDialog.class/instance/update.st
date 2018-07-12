get emails
update

	self numberOfFetchedFolders: 0. 
	self numberOfFolders: 
		(ICHelper getAllFolders: (self emailAccounts collect: [:each | each rootFolder])) size.

	'Updating ' displaySequentialProgress: [self updateProcess].
	self numberOfFetchedFolders: 0