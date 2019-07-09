testing
testAccessors

	self streamWrapper host: ICStreamWrapperTest testserverHost.
	self streamWrapper port: ICStreamWrapperTest testserverPort.

	self
		assert: self streamWrapper host
		equals: ICStreamWrapperTest testserverHost.
	self
		assert: self streamWrapper port
		equals: ICStreamWrapperTest testserverPort
	