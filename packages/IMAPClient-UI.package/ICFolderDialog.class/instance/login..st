action - emails
login: anAccountInfo

	anAccountInfo password: (Project uiManager requestPassword: 'Please enter your password!').
		
	((ICEndPoint new) testAccountWith: anAccountInfo)
		ifTrue: [
			self passwordPromtCallback: anAccountInfo].