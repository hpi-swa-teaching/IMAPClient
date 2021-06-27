running
setUp

	self endPoint: ICEndPoint new.
	self endPoint connectionHandler stream: ICMockSocketStream new.
	self endPoint connectionHandler stream connected: true.
	
	self endPoint connectionHandler stream server
		validUsername: self class validUsername;
		validPassword: self class validPassword;
		responses: self endPoint connectionHandler stream server notAuthenticatedResponses