login
login
 
	self accountInfo password: (Project uiManager requestPassword: 'Please enter your password!').
		
	((ICEndPoint new) testAccountWith: self accountInfo)
		ifTrue: [
			self folderDialogInstance passwordPromtCallback: self accountInfo.
			self window abandon].
	self erasePassword