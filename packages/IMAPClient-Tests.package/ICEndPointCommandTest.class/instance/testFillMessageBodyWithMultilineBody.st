fetch
testFillMessageBodyWithMultilineBody

	| emailObject |
	emailObject := ICEmailObject new.
	self endPoint fillBodyFor: emailObject with: self multilineBodyMessageID. 
	self assert: (emailObject body) equals: self class expectedFetchMultilineBody
	