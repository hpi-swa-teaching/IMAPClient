accountManagement
editAccount: anAccountInfo with: anEndPoint

	ICEndPoint removeConfiguration: anEndPoint accountInfo.
	self emailAccounts remove: anEndPoint.
	
	self addAccount: anAccountInfo.
	self selectedFolder: nil.
	self rootFolder: nil.
	self triggerEmailChanges