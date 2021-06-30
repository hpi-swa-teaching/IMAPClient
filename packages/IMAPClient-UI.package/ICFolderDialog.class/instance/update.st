action - emails
update

	[self unconnectedAccounts isEmpty] whileFalse: [
		(self login: self unconnectedAccounts first) ifFalse: [^false]].
	self numberOfFetchedFolders: 0. 
	self numberOfFolders: 
		(self emailAccounts collect: [:each | each rootFolder recursiveChildFolders]) flatten size +
		self emailAccounts size.

	'Updating ' displaySequentialProgress: [self updateProcess].
	self numberOfFetchedFolders: 0.