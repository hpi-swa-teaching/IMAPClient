accessing
testPingIfNotConnected

	self should: [self endPoint ping] raise: Exception. 