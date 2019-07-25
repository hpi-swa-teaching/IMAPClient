accountManagment
addAccount: anAccountInfo
	
	ICEndPoint addConfiguration: anAccountInfo asDictionary.
	self emailAccounts add: (ICEndPoint new connectAndLoginWith: anAccountInfo).
	self changed: #emailAccounts