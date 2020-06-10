testing
testMissingPortForCompleteness

	self accountInfo port: nil.
	self assert: self accountInfo isComplete not.
	