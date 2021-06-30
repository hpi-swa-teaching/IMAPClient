accountManagement
passwordPromtCallback: anICEndpoint
	
	
	anICEndpoint connectAndLogin ifFalse: [^false]."ifTrue: [
		nextAccount := self emailAccounts findFirst: [:account | 
		(account accountInfo accountName) = (anICEndpoint accountName)].
	(self emailAccounts at: nextAccount) ifNotNil: [self emailAccounts removeAt: nextAccount].
		self emailAccounts add: newEndpoint]
		ifFalse: [^ false]."
	
	"self uninitializedAccounts ifNotEmpty: [self login: self uninitializedAccounts first]."
	"self unconnectedAccounts ifNotEmpty: [
		(self login: self first) ifFalse: [^false]]."
	
	self folderWith: anICEndpoint.
	anICEndpoint preventTimeout.
	 "self emailAccounts do: [:endpoint |
		self folderWith: endpoint.
		endpoint preventTimeout]."
	^true