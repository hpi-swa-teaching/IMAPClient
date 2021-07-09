accountManagement
addAccount: anAccountInfo
	
	| endpoint |
	endpoint := ICEndPoint newWith: anAccountInfo.
	endpoint connectAndLogin ifTrue: [
		self emailAccounts add: endpoint.
		self folderWith: endpoint.
		endpoint preventTimeout.
		self changed: #emailAccounts.
		self addAccountInfoToEndpointConfigWithoutPassword: anAccountInfo]
