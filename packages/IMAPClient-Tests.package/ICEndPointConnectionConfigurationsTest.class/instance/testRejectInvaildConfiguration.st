testing
testRejectInvaildConfiguration

	self should: [ICConnectionHandler addConfiguration: Dictionary new] raise: Error description: self class invalidDataDictionaryErrorMessage.
	self should: [ICConnectionHandler addConfiguration: self class defaultInvalidKeysConfigurationDictionary ] raise: Error description: self class invalidDataDictionaryErrorMessage
	