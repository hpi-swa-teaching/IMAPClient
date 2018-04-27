accessing
testReadWrite
	
	| email |
	
	self readWriter write: (self class expectedMailObject) in: 'Maildir'  as: 'testMail'. 
	email := (self readWriter get: 'testMail' in: 'Maildir').
	
	self assert: (email header) equals: self class expectedMailObject header.
	self assert: (email body) equals: self class expectedMailObject body