testing
testAccountInfoFromEmptyDictionaryIsInvalid

	self assert: (ICAccountInfo newWith: {} asDictionary) isValid not.
	