accessing
testCreateHeader
	
	| jsonHeader |
	
	jsonHeader := (self class givenJsonObject at: 'header').
	self 
		assert: (self readWriter createHeaderFrom: jsonHeader) 
		equals: self class expectedMailObject header