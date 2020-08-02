testing
testMissingUsernameForCompleteness

	self accountInfo username: ''.
	self assert: (self accountInfo missingFields includes: 'username')
	