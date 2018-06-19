accountManagment
addAccount: aDataDictionary

	"callback method for dialog"
	
	| accountCollection |
	
	ICHelper saveCredentialsIntoFile: aDataDictionary.
	accountCollection := ICHelper loadCredentialsIntoDictionaries.
	self emailAccounts: (ICHelper accountDictionariesToEndpoints: accountCollection).
	self changed: #emailAccounts