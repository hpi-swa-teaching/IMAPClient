accountManagement
passwordPromtCallback: anAccountInfo
	
	| nextAccount |
	self initializedAccounts add: anAccountInfo.
	
	nextAccount := self uninitializedAccounts findFirst: [:account | 
		(account accountName) = (anAccountInfo accountName)].
	(self uninitializedAccounts at: nextAccount) ifNotNil: [self uninitializedAccounts removeAt: nextAccount].
	
	self emailAccounts add: ((ICEndPoint newWith: anAccountInfo) connectAndLogin).