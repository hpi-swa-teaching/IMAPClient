testing
testMissingPortForCompleteness

	self accountInfo port: ''.
	self assert: (self accountInfo missingFields contains: [:key | key = 'port'])
	