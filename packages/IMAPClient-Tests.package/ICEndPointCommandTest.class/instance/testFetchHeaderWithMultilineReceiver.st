fetch
testFetchHeaderWithMultilineReceiver

	| emailObject |
	emailObject := self endPoint fetchHeader: self multilineReceiverMessageID.
	self assert: (emailObject to size) equals: 2. 
	self assert: (emailObject header) equals: self class expectedFetchHeaderWithMultipleReceivers
	