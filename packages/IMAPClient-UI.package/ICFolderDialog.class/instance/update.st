action - emails
update

	| tmp |
	self uninitializedAccounts ifNotEmpty: [
		(self login: self uninitializedAccounts first) ifFalse: [^false]].
	self numberOfFetchedFolders: 0. 
	self numberOfFolders: 
		(self emailAccounts collect: [:each | each rootFolder recursiveChildFolders]) flatten size +
		self emailAccounts size.

	'Updating ' displaySequentialProgress: [self updateProcess].
	self numberOfFetchedFolders: 0.
	tmp := self selectedFolder.
	self switchToNewEndpoint.