login
login

	"create a dictionary with data and return it"
 
	| accountInfo |
 
	self insertDefaults.
	accountInfo := self createAccountInfo.
	(self checkIfAllFieldsFilled: accountInfo)
		ifFalse: [^ self].
	(self checkIfAccountnameUnused: accountInfo)
		ifFalse: [^ self].
 
	((ICEndPoint new) testAccountWith: accountInfo)
		ifTrue: [
			self loginMorph abandon.
			(self updateMode)
				ifFalse: [folderDialogInstance addAccount: accountInfo]
				ifTrue: [folderDialogInstance editAccount: accountInfo with: (self endpoint)]]