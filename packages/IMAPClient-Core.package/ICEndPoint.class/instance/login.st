login
login

	(self connectionHandler throwErrorIfNotLoggedIn) ifFalse: [^ false].
  	(self accountInfo isValid) ifFalse: [^ false].
	
	self connectionHandler sendLoginCommand.
	
	(self connectionHandler throwErrorIfNotLoggedIn) ifFalse: [^ false].
	
	^ true