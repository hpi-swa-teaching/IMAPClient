connectOn
testConnectOn

	self assert: (self endPoint connectTo: self class validHost on: self class validPort)