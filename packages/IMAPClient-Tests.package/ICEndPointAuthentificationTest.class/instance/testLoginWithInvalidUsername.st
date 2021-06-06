login
testLoginWithInvalidUsername

	[self endPoint connectionHandler accountInfo: self class invalidUsernameAccountInfo.
	self deny: self endPoint login] valueSuppressingAllMessages