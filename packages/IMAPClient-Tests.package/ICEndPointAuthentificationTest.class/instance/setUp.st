setup
setUp

	self endPoint: ICEndpoint new.
	self endPoint stream: ICMockSocketStream new.
	self endPoint stream connected: true.
	self endPoint stream server
		validUsername: self class validUsername;
		validPassword: self class validPassword;
		responses: self endPoint stream server notAuthenticatedResponses