as yet unclassified
testSuccesfulLogin

	self endPoint authenticationInfo
		username: self class validUsername;
		password: self class validPassword.
	self assert: self endPoint login