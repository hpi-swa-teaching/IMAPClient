action - emails
login: anICEndpoint

	| continueAsking |
	continueAsking := true. 
	[continueAsking] whileTrue: [
		anICEndpoint accountInfo password: (Project uiManager requestPassword: 'Please enter your password!').
		anICEndpoint accountInfo password ifEmpty: [^false].
		continueAsking:= (self passwordPromtCallback: anICEndpoint) not.].
	^ true