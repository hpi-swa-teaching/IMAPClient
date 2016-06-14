connectToOn
testConnectToOn_WrongPort

	self should: [ self endPoint connectTo: self class serverName on: self class serverInvalidPort ] raise: NetworkError