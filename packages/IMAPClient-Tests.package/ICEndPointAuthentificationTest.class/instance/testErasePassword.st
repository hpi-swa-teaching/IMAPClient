login
testErasePassword

	self endPoint class eraseStoredPasswords.
	self assert: self endPoint accountInfo password equals: ''