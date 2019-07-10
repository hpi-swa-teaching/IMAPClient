accessing
password
	
	^ password ifNil: [self password: self class invalidPassword]