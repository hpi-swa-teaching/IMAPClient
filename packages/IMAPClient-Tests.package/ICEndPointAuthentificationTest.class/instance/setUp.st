running
setUp

	| accountInfo |
	self endPoint: ICEndPoint new.
	self endPoint connectionHandler stream: ICMockSocketStream new.
	self endPoint connectionHandler stream connected: true.
	
	self endPoint connectionHandler stream server
		validUsername: self class validUsername;
		validPassword: self class validPassword;
		responses: self endPoint connectionHandler stream server notAuthenticatedResponses.
		
	accountInfo := ((ICAccountInfo new)
		accountName:  'testAccountName';
		host: 'test.host';
		port: 993;
		username: 'testUser';
		password: 'superSecure';
		ssl: true).
	
	self endPoint connectionHandler accountInfo: accountInfo.
	self endPoint class addConfiguration: accountInfo
