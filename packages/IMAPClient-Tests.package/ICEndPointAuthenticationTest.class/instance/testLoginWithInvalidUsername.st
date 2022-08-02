login
testLoginWithInvalidUsername

	self endpoint connectionHandler accountInfo: self class invalidUsernameAccountInfo.
	self should: [self endpoint connectAndLogin] raise: Error.
	self deny: self endpoint connectionHandler loggedIn