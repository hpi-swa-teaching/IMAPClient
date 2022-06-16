fetch
testFetchMailsBeginningAtWithoutFoundMails

	self assert: (self endPoint fetchMailsBeginningAt: 3 number: 5) isEmpty