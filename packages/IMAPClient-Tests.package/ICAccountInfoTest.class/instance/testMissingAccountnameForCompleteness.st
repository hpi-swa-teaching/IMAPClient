testing
testMissingAccountnameForCompleteness

	self accountInfo accountName: nil.
	self assert: self accountInfo isComplete not.
	