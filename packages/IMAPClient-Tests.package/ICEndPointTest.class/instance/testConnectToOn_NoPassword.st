connectToOn
testConnectToOn_NoPassword

	"testing whether we can establish a connection to the server without log in"
	
	"this is not how the endPoint should be used, but we still want to cover this edge case"
	"please use ICEndPoint >> connectTo: on: andLogin: using: "
	self endPoint user: self class serverInvalidUsername.
	self assert: (self endPoint connectTo: self class serverName on: self class serverPort) equals: true