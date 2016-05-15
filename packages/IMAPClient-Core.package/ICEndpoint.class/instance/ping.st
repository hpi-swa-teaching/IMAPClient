message handling
ping

	self isConnected ifFalse: [ ^ Error signal: self class errorNoConnection ].
	
	self 
		sendCommand: self class noopCommand;
		fetchNextResponse.
	
	self responseIsError ifTrue: [ ^ Error signal: self class errorBadProtocol ].
	^ true