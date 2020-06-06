accountManagment
deleteAccountButton: anICEndpoint

	ICEndPoint removeConfiguration: (anICEndpoint accountInfo asDictionary).
	self emailAccounts remove: anICEndpoint.
	self
		selectedFolder: nil;
		rootFolder: nil.
	self	triggerEmailChanges.