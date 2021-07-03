action - emails
login: anEndpoint

	| continueAsking |
	continueAsking := true. 
	[continueAsking] whileTrue: [
		anEndpoint accountInfo password: (Project uiManager requestPassword: 'Please enter your password!').
		anEndpoint accountInfo password ifEmpty: [^false].
		continueAsking := (self passwordPromtCallback: anEndpoint) not].
	^ true.