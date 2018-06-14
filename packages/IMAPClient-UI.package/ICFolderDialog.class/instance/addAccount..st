as yet unclassified
addAccount: aDataDictionary

	ICHelper saveCredentialsIntoFile: aDataDictionary.
	self emailAccounts: (ICHelper loadCredentialsFromFile).
	self changed: #emailAccounts.
	self changed: #getNameOfEmailAccounts