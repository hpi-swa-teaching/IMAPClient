testing
testMissingHostForCompleteness

	self accountInfo host: ''.
	self assert: (self accountInfo missingFields contains: [:key | key = 'address'])
	