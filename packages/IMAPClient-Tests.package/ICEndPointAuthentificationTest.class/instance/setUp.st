as yet unclassified
setUp

	self endPoint: ICEndpoint new.
	self endPoint stream: ICMockSocketStream new.
	self endPoint stream isConnected: true.
	
	self endPoint stream
		validUsername: self class validUsername;
		validPassword: self class validPassword.