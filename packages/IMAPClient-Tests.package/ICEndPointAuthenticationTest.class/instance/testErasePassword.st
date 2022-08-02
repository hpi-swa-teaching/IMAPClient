login
testErasePassword

	| accountInfo |
	accountInfo := self class accountInfoForErasing.
	self endpoint connectionHandler accountInfo: accountInfo.
	self endpoint class addConfiguration: accountInfo.
	self endpoint class eraseStoredPasswords.
	self assert: '' equals: self endpoint connectionHandler accountInfo password.
	self endpoint class removeConfiguration: accountInfo