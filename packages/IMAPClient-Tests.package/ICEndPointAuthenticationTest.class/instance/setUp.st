running
setUp

	self endpoint: ICEndPoint new.
	self endpoint connectionHandler stream: ICMockSocketStream new.
	self endpoint connectionHandler stream connected: true.
	
	self endpoint connectionHandler stream server
		validUsername: self class validUsername;
		validPassword: self class validPassword;
		responses: self endpoint connectionHandler stream server notAuthenticatedResponses