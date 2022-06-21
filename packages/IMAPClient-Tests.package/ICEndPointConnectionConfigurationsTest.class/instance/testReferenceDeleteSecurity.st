testing
testReferenceDeleteSecurity

	| reference |
	ICEndPoint addConfiguration: self class defaultAccountInfo.
	reference := ICEndPoint connectionConfigurations.
	reference remove: self class defaultAccountInfo.
	
	self
		assert: ICEndPoint connectionConfigurations
		equals: {self class defaultAccountInfo} asOrderedCollection