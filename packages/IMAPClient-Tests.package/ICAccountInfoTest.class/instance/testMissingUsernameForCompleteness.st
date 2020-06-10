testing
testMissingUsernameForCompleteness

	self accountInfo username: nil.
	self assert: self accountInfo isComplete not.
	