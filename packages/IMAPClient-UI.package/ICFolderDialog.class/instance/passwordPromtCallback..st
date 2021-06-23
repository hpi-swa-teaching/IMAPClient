accountManagement
passwordPromtCallback: anAccountInfo
	
	| nextAccount |	
	nextAccount := self uninitializedAccounts findFirst: [:account | 
		(account accountName) = (anAccountInfo accountName)].
	(self uninitializedAccounts at: nextAccount) ifNotNil: [self uninitializedAccounts removeAt: nextAccount].
	
	nextAccount := self emailAccounts findFirst: [:account | 
		(account accountInfo accountName) = (anAccountInfo accountName)].
	(self emailAccounts at: nextAccount) ifNotNil: [self emailAccounts removeAt: nextAccount].
	
	BreakPoint break.
	
	self emailAccounts add: ((ICEndPoint newWith: anAccountInfo) connectAndLogin).
	self uninitializedAccounts ifNotEmpty: [ICPasswordDialog openWith: (self uninitializedAccounts first) and: self].