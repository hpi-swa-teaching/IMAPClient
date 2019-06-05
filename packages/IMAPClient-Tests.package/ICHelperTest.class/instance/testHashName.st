as yet unclassified
testHashName

	self assert: (ICHelper hashNameForAccount: 'testHost' and: 'klaus') equals: '1394373304'.
	self assert: (ICHelper hashNameForAccount: 'tHost' and: 'klaus') equals: '8003456151'.
	self assert: (ICHelper hashNameForAccount: 'abcd' and: 'efgh') equals: '3788214663'