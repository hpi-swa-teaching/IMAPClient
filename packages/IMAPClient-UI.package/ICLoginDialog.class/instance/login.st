login
login

	"create a dictionary with data and return it"
	
	| dataDictionary |
	
	dataDictionary := self makeDataDictionary.
	
	((ICEndPoint new) testAccountWith: dataDictionary)
		ifTrue: [	
			(self updateMode)
				ifFalse: [folderDialogInstance addAccount: dataDictionary]
				ifTrue: [folderDialogInstance editAccount: dataDictionary with: (self endpoint)]]