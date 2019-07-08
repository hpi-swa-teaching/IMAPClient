testing
testReferenceDeleteSecurity
	
	|reference|
	ICEndPoint addConfiguration: self class defaultConfigurationDictionary.
	reference := ICEndPoint connectionConfigurations.
	reference remove: self class defaultConfigurationDictionary.
	
	self assert: ICEndPoint connectionConfigurations equals: {self class defaultConfigurationDictionary} asOrderedCollection.