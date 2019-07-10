login
testLogin
	
	self endPoint accountInfo: self class validAccountInfo.
	self assert: (self endPoint login)