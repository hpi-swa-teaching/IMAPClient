action - emails
login: anEndpoint with: aString

	anEndpoint accountInfo password: aString.
	anEndpoint accountInfo password ifEmpty: [^ false].
	(self passwordPromtCallback: anEndpoint) ifTrue: [self update]