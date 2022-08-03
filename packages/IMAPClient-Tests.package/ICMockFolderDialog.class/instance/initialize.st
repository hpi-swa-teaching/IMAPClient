mock methods
initialize

	self emailAccounts: self getEmailAccounts.
	self rootFolder: self emailAccounts first rootFolder.
	self dialogTitle: self title, '   |   ', 'Please update for login'.
	
	Smalltalk addToShutDownList: self.
	ToolBuilder default open: self