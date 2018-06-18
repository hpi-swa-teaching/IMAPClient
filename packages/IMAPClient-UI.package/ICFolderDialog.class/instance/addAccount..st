as yet unclassified
addAccount: aDataDictionary

	| accountCollection |
	
	ICHelper saveCredentialsIntoFile: aDataDictionary.
	accountCollection := ICHelper loadCredentialsIntoDictionaries.
	self emailAccounts: (ICHelper accountDictionariesToEndpoints: accountCollection).
	self changed: #emailAccounts.
	self changed: #getNameOfEmailAccounts