login
login

	(self connectionHandler throwErrorIfNotLoggedIn) ifFalse: [^ false].
  	(self accountInfo isValid) ifFalse: [^ false].
	
	self connectionHandler sendLoginCommand.
	self readEmailsFromDisk.
	
	(self connectionHandler throwErrorIfNotLoggedIn) ifFalse: [^ false].
	
	^ true