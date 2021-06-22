login
testErasePassword

	self endPoint class eraseStoredPasswords.
	self assert: self endPoint connectionHandler accountInfo password equals: ''