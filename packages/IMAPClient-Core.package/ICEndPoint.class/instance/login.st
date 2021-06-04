login
login

	(self connectionHandler throwErrorIfNotLoggedIn) ifFalse: [^ false].
  	(self connectionHandler throwErrorIfAccountInvalid) ifFalse: [^ false].
	
	self connectionHandler sendLoginCommand.
	
	(self throwErrorIfNotLoggedIn) ifFalse: [^ false].

	(ICFileReadWriter newWith: self) readEmailsFromDisk.
	^ true