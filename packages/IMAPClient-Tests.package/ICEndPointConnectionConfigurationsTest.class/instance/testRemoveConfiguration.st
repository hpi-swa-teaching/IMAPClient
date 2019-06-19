testing
testRemoveConfiguration

	ICEndPoint addConfiguration: self class defaultConfigurationDictionary.
	ICEndPoint removeConfiguration: self class defaultConfigurationDictionary.
	self assert: ICEndPoint connectionConfigurations equals: OrderedCollection new