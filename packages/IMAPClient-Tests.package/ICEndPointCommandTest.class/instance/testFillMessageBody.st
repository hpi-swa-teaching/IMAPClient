fetch
testFillMessageBody

	| email body |
	email := ICEmail new.
	email messageID: 42.
	email uniqueID: 42.
	
	body := self endpoint getBodyFor: email.
	self assert: body equals: self class expectedFetchBody