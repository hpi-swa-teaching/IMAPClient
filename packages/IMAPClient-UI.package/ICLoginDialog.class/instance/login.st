login
login

	"create a dictionary with data and return it"
 
	| dataDictionary |
 
	dataDictionary := self makeDataDictionary.
	(self checkIfAllFieldsFilled: dataDictionary)
		ifFalse: [^ self].
	(self checkIfAccountnameUnused: dataDictionary)
		ifFalse: [^ self].
 
	((ICConnectionHandler new) testAccountWith: dataDictionary)
		ifTrue: [
			self loginMorph abandon.
			(self updateMode)
				ifFalse: [folderDialogInstance addAccount: dataDictionary]
				ifTrue: [folderDialogInstance editAccount: dataDictionary with: (self endpoint)]]