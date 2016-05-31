error handling
checkLoggedIn
		
	self isLoggedIn ifFalse: [ ^ Error signal: self class errorLoginFailed ]