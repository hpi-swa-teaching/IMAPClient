accountManagement
addAccount: anAccountInfo
	
	self emailAccounts add: (ICEndPoint newWith: anAccountInfo) connectAndLogin.
	self changed: #emailAccounts.
	self addAccountInfoToEndpointConfigWithoutPassword: anAccountInfo.
