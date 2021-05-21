fetch
testFillMessageBody

	| email |
	
	email := ICEmail new.
	email messageID: 42.
	email uniqueID: 42.
	
	self endPoint getBodyFor: email. 
	self assert: (email body) equals: self class expectedFetchBody