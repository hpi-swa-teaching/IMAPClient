testing
testAddConfiguration

	ICConnectionHandler addConfiguration: self class defaultConfigurationDictionary.
	self assert: ICConnectionHandler connectionConfigurations equals: 
		{ self class defaultConfigurationDictionary } asOrderedCollection