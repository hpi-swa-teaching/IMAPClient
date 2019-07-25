accountManagment
deleteAccountButton: anICEndpoint

	ICEndPoint removeConfiguration: (anICEndpoint accountInfo asDictionary).
	self emailAccounts remove: anICEndpoint.
	
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self changed: #selectedFolder.	
	self changed: #rootFolder.
	self changed: #childFolders.
	self changed: #emailsOfSelectedFolder.
	self changed: #emailAccounts