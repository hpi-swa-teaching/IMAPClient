testing
testStreamConnection

	self streamWrapper connectTo: ICStreamWrapperTest testserverHost on: ICStreamWrapperTest testserverPort.

	self assert: self streamWrapper isConnected.