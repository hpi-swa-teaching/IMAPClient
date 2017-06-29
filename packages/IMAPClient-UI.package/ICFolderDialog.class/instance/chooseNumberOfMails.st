accessing
chooseNumberOfMails

	| numberOfMails |
	numberOfMails := #('5' '10' '20' '50' '100' '*').
			
	self numberOfHeadersToFetch: (UIManager default chooseFrom: numberOfMails values: numberOfMails title: 'How many mails?').
	self numberOfHeadersToFetch ifNil: [ self numberOfHeadersToFetch: '5' ]