action - emails
login: anICEndpoint

	| continueAsking | 
	continueAsking := false. 
	[continueAsking] whileFalse: [
		anICEndpoint accountInfo password: (Project uiManager requestPassword: 'Please enter your password!').
		anICEndpoint accountInfo password ifEmpty: [^false].
		continueAsking:= self passwordPromtCallback: anICEndpoint.].
	^ true.