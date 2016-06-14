fetch
testFillMessageBody

	| emailObject |
	emailObject := ICEmailObject new.
	self endPoint fillBodyFor: emailObject with: self messageID. 
	self assert: (emailObject body) equals: self class expectedFetchBody
	