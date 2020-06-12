testing
testMissingAccountnameForCompleteness

	self accountInfo accountName: ''.
	self assert: (self accountInfo missingFields contains: [:key | key = 'accountName'])
	