as yet unclassified
addAccount: aDataDictionary

	self saveConfig: aDataDictionary.
	self emailAccounts: (self loadCredentialsFromFile).
	self changed: #emailAccounts.
	self changed: #getNameOfEmailAccounts