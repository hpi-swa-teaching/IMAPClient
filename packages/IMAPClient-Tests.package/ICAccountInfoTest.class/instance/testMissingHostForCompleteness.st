testing
testMissingHostForCompleteness

	self accountInfo host: ''.
	self assert: (self accountInfo missingFields includes: 'address')
	