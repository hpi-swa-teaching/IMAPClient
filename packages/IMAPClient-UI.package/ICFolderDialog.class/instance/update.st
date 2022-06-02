action - emails
update
	
	self unconnectedAccounts isEmpty ifFalse: [self openPasswordDialog]
	ifTrue:
		[self numberOfFetchedFolders: 0. 
		self numberOfFolders: 
			(self emailAccounts collect: [:each | each rootFolder recursiveChildFolders]) flatten size +
			self emailAccounts size.

		['Updating ' displaySequentialProgress: [self updateProcess]] fork.
		self numberOfFetchedFolders: 0]
	