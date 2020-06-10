testing
testMissingPasswordForCompleteness

	self accountInfo password: nil.
	self assert: self accountInfo isComplete not.
	