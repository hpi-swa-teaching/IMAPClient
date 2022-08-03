login
testLogin

	self endpoint connectionHandler accountInfo: self class validAccountInfo.
	self assert: self endpoint connectAndLogin.
	self assert: self endpoint connectionHandler loggedIn