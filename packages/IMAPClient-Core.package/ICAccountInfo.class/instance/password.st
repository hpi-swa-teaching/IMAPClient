accessing
password
	
	password ifNil:
		[self password: self class initialPassword].
	^ password