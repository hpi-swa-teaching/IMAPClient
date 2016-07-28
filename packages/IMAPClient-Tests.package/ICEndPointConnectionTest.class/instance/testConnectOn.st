connectOn
testConnectOn

	self shouldnt: (self endPoint connectTo: self class validHost on: self class validPort) raise: Exception. 
	self assert: endPoint isConnected