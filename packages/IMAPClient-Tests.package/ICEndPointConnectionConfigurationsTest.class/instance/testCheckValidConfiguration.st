testing
testCheckValidConfiguration

	self assert: (ICConnectionHandler checkValidConfiguration: Dictionary new) not.
	self assert: (ICConnectionHandler checkValidConfiguration: self class defaultInvalidKeysConfigurationDictionary) not.
	
	self assert: (ICConnectionHandler checkValidConfiguration: self class defaultConfigurationDictionary)