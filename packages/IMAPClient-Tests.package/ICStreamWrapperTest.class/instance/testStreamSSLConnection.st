testing
testStreamSSLConnection

	self streamWrapper sslConnectTo: ICStreamWrapperTest testserverHost on: ICStreamWrapperTest testserverSSLPort.

	self assert: self streamWrapper isConnected.