accountManagment
editAccount: anAccountInfo with: anEndPoint
	
	ICEndPoint removeConfiguration: anEndPoint accountInfo asDictionary.
	self emailAccounts remove: anEndPoint.
	
	ICEndPoint addConfiguration: anAccountInfo asDictionary.
	
	self emailAccounts add: (ICEndPoint new connectAndLoginWith: anAccountInfo).
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self triggerBasicChanges.
	self changed: #emailAccounts.