fetch
testFillMessageBodyWithMultilineBody

	| email |
	email := ICEmail new.
	email messageID: 43.
	self endPoint fillBodyFor: email. 
	self assert: (email body) equals: self class expectedFetchMultilineBody
	