login
login
 
	self accountInfo password: self password asString.
		
	((ICEndPoint new) testAccountWith: self accountInfo)
		ifTrue: [
			self folderDialogInstance passwordPromtCallback: self accountInfo.
			self window abandon].
	self erasePassword