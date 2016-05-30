connectToOn
testConnectToOn_WrongHost

	self should: [self endPoint connectTo: self class serverInvalidName on: self class serverPort] raise: Exception