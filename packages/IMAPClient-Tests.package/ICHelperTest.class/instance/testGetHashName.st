as yet unclassified
testGetHashName

	self assert: (ICHelper getHashNameForAccount: 'testHost' and: 'klaus') equals: '1394373304'.
	self assert: (ICHelper getHashNameForAccount: 'tHost' and: 'klaus') equals: '8003456151'.
	self assert: (ICHelper getHashNameForAccount: 'abcd' and: 'efgh') equals: '3788214663'