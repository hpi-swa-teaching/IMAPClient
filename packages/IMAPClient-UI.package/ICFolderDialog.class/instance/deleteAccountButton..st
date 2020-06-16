accountManagment
deleteAccountButton: anEndpoint

	ICEndPoint removeConfiguration: anEndpoint accountInfo asDictionary.
	self emailAccounts remove: anEndpoint.
	
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self triggerEmailChanges