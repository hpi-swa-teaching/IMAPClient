testing
testStreamConnection

	self streamWrapper connectTo: self class testserverHost on: self class testserverPort.

	self assert: self streamWrapper isConnected.