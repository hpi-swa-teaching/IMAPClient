fetch
testFillMessageBody

	| email |
	
	email := ICEmail new.
	email messageID: 42.
	email uid: 42.
	
	self endPoint fillBodyFor: email. 
	self assert: (email body) equals: self class expectedFetchBody