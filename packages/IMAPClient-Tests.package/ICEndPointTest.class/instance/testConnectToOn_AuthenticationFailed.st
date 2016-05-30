connectToOn
testConnectToOn_AuthenticationFailed

	"this is not how the endPoint should be used, but we still want to cover this edge case"
	"please use ICEndPoint >> connectTo: on: andLogin: using: "
	self endPoint
		user: self class serverInvalidUsername;
		password: self class serverInvalidPassword;
		connectTo: self class serverName on: self class serverPort.
	self deny: self endPoint isLoggedIn