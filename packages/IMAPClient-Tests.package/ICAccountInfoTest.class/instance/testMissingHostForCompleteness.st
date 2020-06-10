testing
testMissingHostForCompleteness

	self accountInfo host: nil.
	self assert: self accountInfo isComplete not.
	