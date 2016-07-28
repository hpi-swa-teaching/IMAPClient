connectOn
testConnectOnAndLoginUsing

	| conInfo authInfo |
	self endPoint stream server
		validUsername: ICEndPointAuthentificationTest validUsername;
		validPassword: ICEndPointAuthentificationTest validPassword;
		responses: self endPoint stream server notAuthenticatedResponses.
	conInfo := ICServerInfo for: self class validHost using: self class validPort.
	authInfo := ICAuthenticationInfo for: ICEndPointAuthentificationTest  validUsername using: ICEndPointAuthentificationTest validPassword.
	self shouldnt: ( self endPoint connectTo: conInfo andLoginUsing: authInfo) raise: Exception.
	self assert: endPoint isConnected.