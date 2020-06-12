testing
testMissingPasswordForCompleteness

	self accountInfo password: ''.
	self assert: (self accountInfo missingFields contains: [:key | key = 'password'])
	