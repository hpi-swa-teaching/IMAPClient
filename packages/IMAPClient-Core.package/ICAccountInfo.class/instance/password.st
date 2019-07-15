accessing
password
	
	^ password ifNil: [password := self class invalidPassword]