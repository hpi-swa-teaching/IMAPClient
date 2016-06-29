fetch
testFetchHeaderWithMultilineReceiver

	| emailObject |
	emailObject := self endPoint fetchHeader: self multilineReceiverMessageID.
	self assert: (emailObject header) equals: self class expectedFetchHeader
	