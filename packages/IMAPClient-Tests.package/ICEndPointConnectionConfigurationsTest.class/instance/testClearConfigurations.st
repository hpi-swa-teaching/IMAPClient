testing
testClearConfigurations

	ICEndPoint class addConfiguration: self class defaultConfigurationDictionary.
	ICEndPoint class clearConfigurations.
	self assert: ICEndPoint class connectionConfigurations equals: Dictionary new