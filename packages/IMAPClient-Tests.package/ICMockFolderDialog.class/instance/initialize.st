as yet unclassified
initialize

	self emailAccounts: self getEmailAccounts.
	self dialogTitle: self title, '   |   ', 'Please update for login'.
	
	Smalltalk addToShutDownList: self.
	ToolBuilder default open: self