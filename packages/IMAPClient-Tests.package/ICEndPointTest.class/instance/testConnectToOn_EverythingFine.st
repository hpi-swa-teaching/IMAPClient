connectToOn
testConnectToOn_EverythingFine
	
	"this is not how the endPoint should be used, but we still want to cover this edge case"
	"please use ICEndPoint >> connectTo: on: andLogin: using: "
	self endPoint authenticationInfo
		username: self class serverUsername;
		password: self class serverPassword.
	self endPoint connectTo: self class serverName on: self class serverPort.
	self assert: self endPoint isConnected