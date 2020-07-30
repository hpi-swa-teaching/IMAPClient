accountManagment
addAccount: anAccountInfo
	
	ICEndPoint addConfiguration: anAccountInfo.
	self emailAccounts add: (ICEndPoint new connectAndLoginWith: anAccountInfo).
	self changed: #emailAccounts