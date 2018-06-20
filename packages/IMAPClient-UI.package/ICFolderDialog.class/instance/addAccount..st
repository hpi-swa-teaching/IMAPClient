as yet unclassified
addAccount: aDataDictionary
	| data |
	self halt.
	data := OrderedCollection new.
	data add: aDataDictionary.
	
	ICHelper saveCredentialsIntoFile: aDataDictionary.
	self emailAccounts add: ((ICHelper accountDictionariesToEndpoints: data) at: 1).
	self changed: #emailAccounts.
	self changed: #getNameOfEmailAccounts