testing
testClearConfigurations

	ICEndPoint addConfiguration: self class defaultAccountInfo.
	ICEndPoint clearConfigurations.
	self assert: ICEndPoint connectionConfigurations equals: OrderedCollection new