message handling
logout

	self isConnected ifFalse: [ ^ Error signal: self class errorNoConnection ].
	self sendCommand: self class logoutCommand;
		fetchNextResponse.
	self responseIsError ifTrue: [ ^ Error signal: self class errorBadProtocol ].
	self fetchNextResponse.
	self close.
	^ true