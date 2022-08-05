accountManagement
deleteAccountButton: anICEndPoint

	ICEndPoint removeConfiguration: anICEndPoint accountInfo.
	self emailAccounts remove: anICEndPoint.
	
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self triggerEmailChanges