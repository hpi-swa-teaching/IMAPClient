login
login

	| accountInfo |
 
	self insertDefaults.
	accountInfo := self createAccountInfo.
	(self allFieldsFilled: accountInfo)
		ifFalse: [^ self].
 
	((ICEndPoint new) testAccountWith: accountInfo)
		ifTrue: [
			self loginMorph abandon.
			(self updateMode)
				ifFalse: [
					(self accountnameUnused: accountInfo) ifFalse: [^ self].
					self folderDialogInstance addAccount: accountInfo]
				ifTrue: [self folderDialogInstance editAccount: accountInfo with: (self endpoint)]]