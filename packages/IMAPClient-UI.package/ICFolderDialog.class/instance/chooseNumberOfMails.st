accessing
chooseNumberOfMails

	| numberOfMails |
	numberOfMails := #('5' '10' '20' '50' '100' '*').
			
	numberOfHeadersToFetch := (UIManager default chooseFrom: numberOfMails values: numberOfMails title: 'How many mails?').
	numberOfHeadersToFetch ifNil: [ numberOfHeadersToFetch := '5' ]