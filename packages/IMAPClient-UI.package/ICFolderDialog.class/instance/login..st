action - emails
login: anAccountInfo

	| continueAsking | 
	continueAsking := false. 
	[continueAsking] whileFalse: [ anAccountInfo password: (Project uiManager requestPassword: 'Please enter your password!').
	continueAsking:= (self passwordPromtCallback: anAccountInfo)]