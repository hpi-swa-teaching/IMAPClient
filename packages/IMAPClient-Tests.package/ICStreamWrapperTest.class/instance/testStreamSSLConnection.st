testing
testStreamSSLConnection

	self streamWrapper sslConnectTo: self class testserverHost on: self class testserverSSLPort.

	self assert: self streamWrapper isConnected