testing
testMissingSSLForCompleteness

	self accountInfo ssl: nil.
	self assert: self accountInfo isComplete not.
	