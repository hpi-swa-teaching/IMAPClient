login
testLoginWithInvalidUsername

	self endPoint connectionHandler accountInfo: self class invalidUsernameAccountInfo.
	self should: [self endPoint connectAndLogin] raise: Error.
	self deny: self endPoint connectionHandler loggedIn