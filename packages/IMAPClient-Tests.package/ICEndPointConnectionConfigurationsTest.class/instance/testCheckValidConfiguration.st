testing
testCheckValidConfiguration

	self assert: (ICEndPoint checkValidConfiguration: Dictionary new) not.
	self assert: (ICEndPoint checkValidConfiguration: self class defaultInvalidKeysConfigurationDictionary) not.
	
	self assert: (ICEndPoint checkValidConfiguration: self class defaultConfigurationDictionary)