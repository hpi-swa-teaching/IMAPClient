accessing
username: aString

	(self canConvert: aString) ifFalse: [self error: (aString, ' is not IMAP convertable')].
	username := aString