fetch
testFetchHeaderWithDifferentOrder

	| emailObject |
	emailObject := self endPoint fetchHeader: self messageIDWithDifferentOrder.
	self assert: (emailObject header) equals: self class expectedFetchHeader
	