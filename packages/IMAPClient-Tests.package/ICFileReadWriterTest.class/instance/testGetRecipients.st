accessing
testGetRecipients
	
	| jsonRecipients |
	
	jsonRecipients := (self class givenJsonObject at: 'header') at: 'to'.
	self 
		assert: (self readWriter getRecipientsFrom: jsonRecipients) 
		equals: (self class expectedMailObject header at: #to)