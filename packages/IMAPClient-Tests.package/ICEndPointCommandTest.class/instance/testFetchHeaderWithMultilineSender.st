fetch
testFetchHeaderWithMultilineSender

	| emailObject |
	emailObject := self endPoint fetchHeader: self class multilineSenderMessageID.
	self assert: (emailObject header) equals: self class expectedFetchHeader
	