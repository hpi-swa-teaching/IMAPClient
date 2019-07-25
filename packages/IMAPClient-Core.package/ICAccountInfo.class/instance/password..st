accessing
password: aString
	
	(self canConvert: aString) ifFalse: [self error: (aString, ' is not IMAP convertable')].
	password := aString