accountManagement
deleteAccountButton: anEndpoint

	ICEndPoint removeConfiguration: anEndpoint accountInfo.
	self emailAccounts remove: anEndpoint.
	
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self triggerEmailChanges