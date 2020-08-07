constants
defaultAccountInfo

	^ ICAccountInfo newWith: (Dictionary newFrom: {
			'accountName' -> 'accountname'.
			'address' -> 'imap.test.de'.
			'port' -> 42.
			'username' -> 'test@test.test'.
			'password' -> 'TOTALLY SECRET PASSWORD'.
			'ssl' -> true})