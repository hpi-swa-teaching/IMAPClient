login
testLogin_EverythingFine

	self endPoint authenticationInfo
		username: self class validUsername;
		password: self class validPassword.
	self assert: self endPoint login