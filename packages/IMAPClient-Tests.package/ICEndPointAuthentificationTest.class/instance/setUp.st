running
setUp

	| accountInfo |
	self endPoint: ICEndPoint new.
	self endPoint stream: ICMockSocketStream new.
	self endPoint stream connected: true.
	
	self endPoint stream server
		validUsername: self class validUsername;
		validPassword: self class validPassword;
		responses: self endPoint stream server notAuthenticatedResponses.
		
	accountInfo := ((ICAccountInfo new)
		accountName:  'testAccountName';
		host: 'test.host';
		port: 993;
		username: 'testUser';
		password: 'superSecure';
		ssl: true).
	
	self endPoint accountInfo: accountInfo.
	self endPoint class addConfiguration: accountInfo