login
login

	(self connectionHandler throwErrorIfNotLoggedIn and: self accountInfo isValid)
  		 ifFalse: [^ false].
	
	self connectionHandler sendLoginCommand.

	(self connectionHandler throwErrorIfNotLoggedIn) ifFalse: [^ false].
	
	^ true