testing
testClearConfigurations

	ICEndPoint addConfiguration: self class defaultConfigurationDictionary.
	ICEndPoint clearConfigurations.
	self assert: ICEndPoint connectionConfigurations equals: OrderedCollection new