fetch
testFetchHeaderWithMultilineSender

	| emailObject |
	emailObject := self endPoint fetchHeader: self multilineSenderMessageID.
	self assert: (emailObject header) equals: self class expectedFetchHeader
	