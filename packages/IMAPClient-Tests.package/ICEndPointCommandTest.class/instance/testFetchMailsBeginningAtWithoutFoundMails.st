fetch
testFetchMailsBeginningAtWithoutFoundMails

	self assert: (self endpoint fetchMailsBeginningAt: 3 number: 5) isEmpty