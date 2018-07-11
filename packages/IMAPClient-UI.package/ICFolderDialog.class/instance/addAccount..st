accountManagment
addAccount: aDataDictionary

	| data |
	
	data := OrderedCollection new.
	data add: aDataDictionary.
	
	(self testAccountWith: aDataDictionary)
		ifTrue: [	
			ICHelper saveCredentialsIntoFile: aDataDictionary.
			self emailAccounts add: ((ICHelper accountDictionariesToEndpoints: data) at: 1).
			self changed: #emailAccounts]