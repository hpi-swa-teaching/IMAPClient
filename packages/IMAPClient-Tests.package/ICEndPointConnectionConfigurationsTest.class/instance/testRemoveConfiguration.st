testing
testRemoveConfiguration

	ICEndPoint class addConfiguration: self class defaultConfigurationDictionary.
	ICEndPoint class removeConfiguration: (self class defaultConfigurationDictionary at: 'name').
	self assert: ICEndPoint class connectionConfigurations equals: Dictionary new