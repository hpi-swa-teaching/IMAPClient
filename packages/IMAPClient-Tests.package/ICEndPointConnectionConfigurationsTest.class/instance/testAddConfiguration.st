testing
testAddConfiguration

	ICEndPoint addConfiguration: self class defaultConfigurationDictionary.
	self assert: ICEndPoint connectionConfigurations equals: 
		{ self class defaultConfigurationDictionary } asOrderedCollection