fetch
testFetchHeader

	| emailObject |
	
	Transcript show: (String cr, 'endpoints last response:', String cr, self endPoint lastResponse, String cr, String cr).
	emailObject := self endPoint parseFetchHeader: self endPoint lastResponse withId: self messageID.
	self assert: (emailObject header) equals: self class expectedFetchHeader
	