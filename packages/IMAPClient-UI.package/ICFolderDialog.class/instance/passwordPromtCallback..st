accountManagement
passwordPromtCallback: anAccountInfo
	
	| nextAccount |	
	
	nextAccount := self emailAccounts findFirst: [:account | 
		(account accountInfo accountName) = (anAccountInfo accountName)].
	(self emailAccounts at: nextAccount) ifNotNil: [self emailAccounts removeAt: nextAccount].
	
	self emailAccounts add: ((ICEndPoint newWith: anAccountInfo) connectAndLogin).
	self uninitializedAccounts ifNotEmpty: [ICPasswordDialog openWith: (self uninitializedAccounts first) and: self].
	
	 self emailAccounts do: [:endpoint |
		self folderWith: endpoint.
		endpoint preventTimeout].