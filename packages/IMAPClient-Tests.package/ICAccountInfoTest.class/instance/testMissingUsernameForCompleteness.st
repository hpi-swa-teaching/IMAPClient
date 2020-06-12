testing
testMissingUsernameForCompleteness

	self accountInfo username: ''.
	self assert: (self accountInfo missingFields contains: [:key | key = 'username'])
	