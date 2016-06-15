message handling
login

	self checkConnected.
	self authenticationInfo isValid ifFalse: [ ^ false ].
	
	self stream sendCommand: ({ self class loginCommand . self class asProtocolQuote: self authenticationInfo username . self class asProtocolQuote: self authenticationInfo password } joinSeparatedBy: self class protocolBlank).

	self
		fetchNextResponse;
		loggedIn: self commandSucceeded;
		checkLoggedIn.
		
	^ true