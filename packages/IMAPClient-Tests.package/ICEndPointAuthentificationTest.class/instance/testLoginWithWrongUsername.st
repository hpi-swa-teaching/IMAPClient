login
testLoginWithWrongUsername

	self endPoint authenticationInfo
		username: self class invalidUsername;
		password: self class validPassword.
	self deny: self endPoint login