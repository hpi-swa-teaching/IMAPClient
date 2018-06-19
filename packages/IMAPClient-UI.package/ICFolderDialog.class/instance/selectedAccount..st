accessing
selectedAccount: anObject

	(anObject = self selectedAccount)
		ifFalse: [
			selectedAccount := anObject.
			self changeAccounts: anObject.
			
			self changed: #selectedAccount.
		].

	