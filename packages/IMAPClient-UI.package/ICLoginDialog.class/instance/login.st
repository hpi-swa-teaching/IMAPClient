login
login

	"create a dictionary with data and return it"
 
	| dataDictionary |
 
	dataDictionary := self makeDataDictionary.
	(self checkForEmptyParameter: dataDictionary)
		ifFalse: [^ self].
 
	((ICEndPoint new) testAccountWith: dataDictionary)
		ifTrue: [
			self loginMorph abandon.
			(self updateMode)
				ifFalse: [folderDialogInstance addAccount: dataDictionary]
				ifTrue: [folderDialogInstance editAccount: dataDictionary with: (self endpoint)]]