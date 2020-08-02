login
login
	
	(self throwErrorIfNotLoggedIn) ifFalse: [^false].
  	(self throwErrofIfAccountInvalid) ifFalse: [^false].
	
	self sendLoginCommand.
	
	(self throwErrorIfNotLoggedIn) ifFalse: [^false].
	
	(ICFileReadWriter newWith: self) readEmailsFromDisk.
	^ true