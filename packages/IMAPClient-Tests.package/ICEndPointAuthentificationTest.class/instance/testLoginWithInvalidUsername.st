login
testLoginWithInvalidUsername

	[self endPoint accountInfo: self class invalidUsernameAccountInfo.
	self deny: self endPoint login] valueSuppressingAllMessages