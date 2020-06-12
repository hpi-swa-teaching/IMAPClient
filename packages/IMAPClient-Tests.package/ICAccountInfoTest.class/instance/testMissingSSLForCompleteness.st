testing
testMissingSSLForCompleteness

	self accountInfo ssl: ''.
	self assert: (self accountInfo missingFields contains:[:key | key = 'ssl'])
	