testing
testAccessors

	self streamWrapper host: self class testserverHost.
	self streamWrapper port: self class testserverPort.
	
	self assert: self streamWrapper host equals: self class testserverHost.
	self assert: self streamWrapper port equals: self class testserverPort