testing
testRemoveConfiguration

	ICEndPoint addConfiguration: self class defaultAccountInfo.
	ICEndPoint removeConfiguration: self class defaultAccountInfo.
	self assert: ICEndPoint connectionConfigurations equals: OrderedCollection new