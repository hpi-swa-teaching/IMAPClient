message handling
login

	self isConnected ifFalse: [ ^ Error signal: self class errorNoConnection ].
	self authenticationInfo isValid ifFalse: [ ^ false ].
	
	self 
		sendCommand: (ICStringFormatter concatenate: {self class loginCommand . self authenticationInfo username . self authenticationInfo password} with: self class protocolBlank);
		fetchNextResponse.
	
	self responseIsError ifTrue: [ ^ Error signal: self class errorBadProtocol ].
	self loggedIn: self commandSucceeded.
	self isLoggedIn ifFalse: [ ^ Error signal: self class errorLoginFailed ].
	^ true