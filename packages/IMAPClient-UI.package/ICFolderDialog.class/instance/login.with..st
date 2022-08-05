action - emails
login: anEndpoint with: aString

	aString
		ifNotEmpty: [
			anEndpoint accountInfo password: aString.
			(self passwordPromtCallback: anEndpoint) ifTrue: [self update]].