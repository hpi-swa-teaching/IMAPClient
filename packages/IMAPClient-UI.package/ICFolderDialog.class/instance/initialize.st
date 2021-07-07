initialize
initialize 

	self emailAccounts: ((ICEndPoint connectionConfigurations) collect: [:anAccountInfo | 
		(ICEndPoint newWith: anAccountInfo) readEmailsFromDisk]).
	self dialogTitle: self title, '   |   ', 'Please update for login'.

	ToolBuilder default open: self