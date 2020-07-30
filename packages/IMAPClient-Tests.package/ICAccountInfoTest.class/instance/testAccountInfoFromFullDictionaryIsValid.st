testing
testAccountInfoFromFullDictionaryIsValid

	self assert: (ICAccountInfo newWith: self accountInfo asDictionary) isValid.