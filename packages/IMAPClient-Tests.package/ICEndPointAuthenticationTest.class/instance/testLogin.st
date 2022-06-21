login
testLogin

	self endPoint connectionHandler accountInfo: self class validAccountInfo.
	self assert: self endPoint connectAndLogin.
	self assert: self endPoint connectionHandler loggedIn