message handling
login

	self isConnected ifFalse: [ ^ Error signal: self class errorNoConnection ].
	self autheticationInfo isValid ifFalse: [ ^ false ].
	
	self 
		sendCommand: (ICStringFormatter concatinate: {self class loginCommand . self autheticationInfo username . self autheticationInfo password} with: self class protocolBlank);
		fetchNextResponse.
	
	self responseIsError ifTrue: [ ^ Error signal: self class errorBadProtocol ].
	self loggedIn: self commandSucceeded.
	self isLoggedIn ifFalse: [ ^ Error signal: self class errorLoginFailed ].
	^ true