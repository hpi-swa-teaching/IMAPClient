login
testErasePassword
	
	| accountInfo |
	accountInfo := self class accountInfoForErasing.
	self endPoint connectionHandler accountInfo: accountInfo.
	self endPoint class addConfiguration: accountInfo.
	self endPoint class eraseStoredPasswords.
	self assert: '' equals: self endPoint connectionHandler accountInfo password