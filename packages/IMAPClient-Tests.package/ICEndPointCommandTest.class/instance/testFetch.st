fetch
testFetch

	| messageObject |
	self break.
	messageObject := self endPoint fetchEmail: self messageID.
	self assert: messageObject header equals: self class expectedFetchHeader.
	self assert: messageObject body equals: self class expectedFetchBody
	