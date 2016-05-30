connectToOn
testConnectToOn_EverythingFine
	
	"this is not how the endPoint should be used, but we still want to cover this edge case"
	"please use ICEndPoint >> connectTo: on: andLogin: using: "
	self endPoint
		user: self class serverUsername;
		password: self class serverPassword;
		connectTo: self class serverName on: self class serverPort.
	self assert: self endPoint isConnected