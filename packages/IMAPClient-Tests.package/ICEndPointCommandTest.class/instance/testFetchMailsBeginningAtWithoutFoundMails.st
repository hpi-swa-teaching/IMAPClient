fetch
testFetchMailsBeginningAtWithoutFoundMails
	
	"the uids of the mock server are 3 4 42 43 44 45 46
	 so fetchMailsBeginningAt:3 with 5 should return no mails"
	
	| result |
	
	result := self endPoint fetchMailsBeginningAt: 3 number: 5. 
	self assert: result isEmpty