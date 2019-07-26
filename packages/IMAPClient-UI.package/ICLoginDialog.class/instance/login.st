login
login

	"create a dictionary with data and return it"
 
	| accountInfo |
 
	self insertDefaults.
	accountInfo := self createAccountInfo.
	(self allFieldsFilled: accountInfo)
		ifFalse: [^ self].
	(self accountnameUnused: accountInfo)
		ifFalse: [^ self].
 
	((ICEndPoint new) testAccountWith: accountInfo)
		ifTrue: [
			self loginMorph abandon.
			(self updateMode)
				ifFalse: [folderDialogInstance addAccount: accountInfo]
				ifTrue: [folderDialogInstance editAccount: accountInfo with: (self endpoint)]]