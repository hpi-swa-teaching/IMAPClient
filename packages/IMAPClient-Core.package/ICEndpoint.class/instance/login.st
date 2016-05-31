message handling
login

	self checkConnected.
	self authenticationInfo isValid ifFalse: [ ^ false ].
	
	self 
		sendCommand: (ICStringFormatter concatenate: {self class loginCommand . self authenticationInfo username . self authenticationInfo password} with: self class protocolBlank);
		fetchNextResponse;
		checkForBadRequest;
		loggedIn: self commandSucceeded;
		checkLoggedIn.

	^ true