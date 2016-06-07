login
testLogin_WrongUsername

	self endPoint authenticationInfo
		username: self class invalidUsername;
		password: self class validPassword.
	self deny: self endPoint login