fetch
testFillMessageBodyWithMultilineBody

	| email body |
	email := ICEmail new.
	email messageID: 43.
	email uniqueID: 43.
	body := self endpoint getBodyFor: email.
	self assert: body equals: self class expectedFetchMultilineBody