action - emails
login: anICEndPoint with: aString

	aString ifNotEmpty: [
		anICEndPoint accountInfo password: aString.
		(self passwordPromtCallback: anICEndPoint) ifTrue: [self update]]