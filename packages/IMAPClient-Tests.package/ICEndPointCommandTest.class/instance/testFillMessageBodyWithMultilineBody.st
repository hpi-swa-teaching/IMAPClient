fetch
testFillMessageBodyWithMultilineBody

	| email |
	
	email := ICEmail new.
	email messageID: 43.
	email uniqueID: 43.
	self endPoint getBodyFor: email. 
	self assert: (email body) equals: self class expectedFetchMultilineBody