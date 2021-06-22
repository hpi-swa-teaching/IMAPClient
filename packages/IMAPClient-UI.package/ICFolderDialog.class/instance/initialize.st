initialize
initialize 

	self uninitializedAccounts: ICEndPoint connectionConfigurations.
	self emailAccounts: ((ICEndPoint connectionConfigurations) collect: [:anAccountInfo | 
		(ICEndPoint newWith: anAccountInfo) readEmailsFromDisk]).

	ToolBuilder default open: self