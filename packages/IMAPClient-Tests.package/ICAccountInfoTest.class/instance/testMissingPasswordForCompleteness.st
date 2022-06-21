testing
testMissingPasswordForCompleteness

	self accountInfo password: ''.
	self assert: (self accountInfo missingFields includes: 'password')