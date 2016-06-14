fetch
testFetchHeader

	| emailObject |
	emailObject := self endPoint fetchHeader: self messageID.
	self assert: (emailObject header) equals: self class expectedFetchHeader. 
	