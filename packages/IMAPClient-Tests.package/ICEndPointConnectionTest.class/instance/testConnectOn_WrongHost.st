connectOn
testConnectOn_WrongHost

	self should: [self endPoint connectTo: self class invalidHost on: self class invalidPort] raise: Exception