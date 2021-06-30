action - emails
login: anAccountInfo

	| continueAsking | 
	continueAsking := false. 
	[continueAsking] whileFalse: [
		anAccountInfo password: (Project uiManager requestPassword: 'Please enter your password!').
		anAccountInfo password ifEmpty: [^false].
		continueAsking:= (self passwordPromtCallback: anAccountInfo)].
	^ true.