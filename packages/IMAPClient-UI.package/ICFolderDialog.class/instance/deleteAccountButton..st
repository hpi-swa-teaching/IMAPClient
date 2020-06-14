accountManagment
deleteAccountButton: anEndpoint

	ICEndPoint removeConfiguration: anEndpoint accountInfo asDictionary.
	self emailAccounts remove: anEndpoint.
	
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self changed: #selectedFolder.	
	self changed: #rootFolder.
	self changed: #childFolders.
	self changed: #emailsOfSelectedFolder.
	self changed: #emailAccounts