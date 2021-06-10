accountManagement
editAccount: anAccountInfo with: anEndPoint
	
	ICEndPoint removeConfiguration: anEndPoint accountInfo.
	self emailAccounts remove: anEndPoint.
	
	self emailAccounts add: (ICEndPoint new connectAndLoginWith: anAccountInfo).
	self selectedFolder: nil.
	self rootFolder: nil.

	self addAccountInfoToEndpointConfigWithoutPassword: anAccountInfo.
	
	self triggerEmailChanges