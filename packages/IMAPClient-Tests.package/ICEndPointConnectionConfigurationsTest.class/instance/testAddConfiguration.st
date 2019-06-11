testing
testAddConfiguration

	ICEndPoint class addConfiguration: self class defaultConfigurationDictionary.
	self assert: ICEndPoint class connectionConfigurations equals: 
		{ self class defaultConfigurationDictionary at: 'name' -> self class defaultConfigurationDictionary } asDictionary