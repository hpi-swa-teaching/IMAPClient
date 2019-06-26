accountManagment
deleteAccountButton: account

	ICConnectionHandler removeConfiguration: account.
	self emailAccounts remove: account.
	
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self changed: #selectedFolder.	
	self changed: #rootFolder.
	self changed: #childFolders.
	self changed: #emailsOfSelectedFolder.
	self changed: #emailAccounts