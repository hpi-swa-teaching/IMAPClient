testing
testMissingAccountnameForCompleteness

	self accountInfo accountName: ''.
	self assert: (self accountInfo missingFields includes: 'accountName')
	