setup
setUp

	self endPoint: ICEndpoint new.
	self endPoint stream: ICMockSocketStream new.
	self endPoint stream server
		validHost: self class serverName;
		validPort: self class serverPort;
		validUsername: self class serverUsername;
		validPassword: self class serverPassword;
		responses: self endPoint stream server notAuthenticatedResponses