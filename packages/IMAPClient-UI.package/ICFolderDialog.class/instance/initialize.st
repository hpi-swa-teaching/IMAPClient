initialize
initialize 

	self emailAccounts: ((ICEndPoint connectionConfigurations) collect: [:anAccountInfo | 
		(ICEndPoint newWith: anAccountInfo) readEmailsFromDisk]).

	ToolBuilder default open: self