connectToOn
testConnectToOn_AuthenticationFailed

	"this is not how the endPoint should be used, but we still want to cover this edge case"
	"please use ICEndPoint >> connectTo: on: andLogin: using: "
	self endPoint authenticationInfo
		username: self class serverInvalidUsername;
		password: self class serverInvalidPassword.
	self endPoint connectTo: self class serverName on: self class serverPort.
	self deny: self endPoint isLoggedIn