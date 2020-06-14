testing
testMissingPortForCompleteness

	self accountInfo port: ''.
	self assert: (self accountInfo missingFields includes: 'port')
	