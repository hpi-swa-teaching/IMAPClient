accountManagment
addAccount: anAccountInfo
	
	self emailAccounts add: (ICEndPoint new connectAndLoginWith: anAccountInfo).
	self changed: #emailAccounts.
	self addAccountInfoToEndpointConfigWithoutPassword: anAccountInfo.
