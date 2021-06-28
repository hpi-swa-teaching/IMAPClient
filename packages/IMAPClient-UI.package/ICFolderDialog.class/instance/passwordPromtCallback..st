accountManagement
passwordPromtCallback: anAccountInfo
	
	| nextAccount newEndpoint |	
	
	newEndpoint := ICEndPoint newWith: anAccountInfo.
	newEndpoint connectAndLogin ifTrue: [
		nextAccount := self emailAccounts findFirst: [:account | 
		(account accountInfo accountName) = (anAccountInfo accountName)].
	(self emailAccounts at: nextAccount) ifNotNil: [self emailAccounts removeAt: nextAccount].
		self emailAccounts add: newEndpoint]
		ifFalse: [^ false].
	
	self uninitializedAccounts ifNotEmpty: [self login: self uninitializedAccounts first].
	
	 self emailAccounts do: [:endpoint |
		self folderWith: endpoint.
		endpoint preventTimeout].
	^true