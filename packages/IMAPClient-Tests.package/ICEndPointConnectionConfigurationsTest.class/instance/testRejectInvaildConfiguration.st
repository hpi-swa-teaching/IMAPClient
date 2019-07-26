testing
testRejectInvaildConfiguration

	self should: [ICEndPoint addConfiguration: Dictionary new] 
		raise: Error
		description: self class invalidDataDictionaryErrorMessage.
	self should: [ICEndPoint addConfiguration: 
			self class defaultInvalidKeysConfigurationDictionary ] 
		raise: Error
		description: self class invalidDataDictionaryErrorMessage
	