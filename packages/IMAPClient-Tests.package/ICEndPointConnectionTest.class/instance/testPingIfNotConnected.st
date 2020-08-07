accessing
testPingIfNotConnected

	self endPoint ping.
	self assert: self endPoint fatalErrorOccured equals: true