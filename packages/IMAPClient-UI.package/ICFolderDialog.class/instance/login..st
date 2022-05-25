action - emails
login: anEndpoint

	|out|
	
	out := ICInputDialog open: self with: 'Input Password To Login' onCallback: #emailAccounts .
	"| continueAsking |
	continueAsking := true. 
	[continueAsking] whileTrue: [
		anEndpoint accountInfo password: (Project uiManager requestPassword: 'Please enter your password!').
		anEndpoint accountInfo password ifEmpty: [^false].
		continueAsking := (self passwordPromtCallback: anEndpoint) not].
	^ true"
