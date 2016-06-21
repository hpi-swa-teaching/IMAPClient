connectOn
testConnectOnWithWrongPort

	self should: [ self endPoint connectTo: self class validHost on: self class invalidPort ] raise: Exception