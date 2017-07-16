fetch
testFetchHeaderWithDifferentOrder

	| emailObject |
	emailObject := self endPoint fetchHeader: self class messageIDWithDifferentOrder.
	self assert: (emailObject header) equals: self class expectedFetchHeader
	