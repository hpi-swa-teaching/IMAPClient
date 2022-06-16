testing
testAddConfiguration

	ICEndPoint addConfiguration: self class defaultAccountInfo.
	self
		assert: ICEndPoint connectionConfigurations
		equals: {self class defaultAccountInfo} asOrderedCollection