accessing
selectedAccount: anAccount

	(anAccount = self selectedAccount)
		ifFalse: [
			selectedAccount := anAccount.
			self changeAccounts: anAccount.
			self changed: #selectedAccount]