ping
testPing_EverythingFine

	self endPoint connectTo: self class serverName on: self class serverPort.
	self assert: [ self endPoint ping ]
	