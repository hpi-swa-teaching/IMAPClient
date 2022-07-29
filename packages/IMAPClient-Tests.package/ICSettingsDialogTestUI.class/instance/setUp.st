as yet unclassified
setUp

	self settingsDialog: (ICSettingsDialog openWith: self emailAccounts).
	self wantsToTest: self settingsDialog.
	
	
	