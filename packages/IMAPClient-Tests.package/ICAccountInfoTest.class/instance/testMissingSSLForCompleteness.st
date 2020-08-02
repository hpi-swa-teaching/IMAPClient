testing
testMissingSSLForCompleteness

	self accountInfo ssl: ''.
	self assert: (self accountInfo missingFields includes: 'ssl')
	