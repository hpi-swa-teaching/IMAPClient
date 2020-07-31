testing
testAccountInfoFromEmptyDictionaryIsInvalid

	self assert: (ICAccountInfo newWith: Dictionary new) isValid not