accountManagment
editAccount: anAccountInfo with: anEndPoint
	
	ICEndPoint removeConfiguration: anEndPoint accountInfo.
	self emailAccounts remove: anEndPoint.
	
	ICEndPoint addConfiguration: anAccountInfo.
	
	self emailAccounts add: (ICEndPoint new connectAndLoginWith: anAccountInfo).
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self triggerEmailChanges