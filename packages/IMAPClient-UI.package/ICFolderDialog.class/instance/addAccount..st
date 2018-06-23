accountManagment
addAccount: aDataDictionary
	| data |
	
	data := OrderedCollection new.
	data add: aDataDictionary.
	
	ICHelper saveCredentialsIntoFile: aDataDictionary.
	self emailAccounts add: ((ICHelper accountDictionariesToEndpoints: data) at: 1).
	self changed: #emailAccounts
