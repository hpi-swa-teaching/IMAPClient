login
login

	(self connectionHandler throwErrorIfNotLoggedIn) ifFalse: [^ false].
  	(self connectionHandler throwErrorIfAccountInvalid) ifFalse: [^ false].
	BreakPoint break.
	self connectionHandler sendLoginCommand.
	
	(self connectionHandler throwErrorIfNotLoggedIn) ifFalse: [^ false].
	
	^ true