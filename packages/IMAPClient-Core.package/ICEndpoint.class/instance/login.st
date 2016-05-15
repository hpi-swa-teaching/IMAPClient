message handling
login

	self isConnected ifFalse: [ ^ Error signal: self class errorNoConnection ].
	self user ifNil: [ ^ Error signal: self class errorNoUsernameSet ].
	self password ifNil: [ ^ Error signal: self class errorNoPasswordSet ].
	
	self 
		sendCommand: (ICStringFormatter concatinate: (self class loginCommand, self user, self password) with: self class protocolBlank);
		fetchNextResponse.
	
	self responseIsError ifTrue: [ ^ Error signal: self class errorBadProtocol ].
	self loggedIn: self commandSucceeded.
	self isLoggedIn ifFalse: [ ^ Error signal: self class errorLoginFailed ].
	^ true