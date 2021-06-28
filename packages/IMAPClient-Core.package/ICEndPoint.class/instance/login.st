login
login

	(self connectionHandler throwErrorIfNotLoggedIn) ifFalse: [^ false].
  	(self connectionHandler throwErrorIfAccountInvalid) ifFalse: [^ false].
	
	self connectionHandler sendLoginCommand.
	self readEmailsFromDisk.
	
	(self connectionHandler throwErrorIfNotLoggedIn) ifFalse: [^ false].
	
	^ true