login
testLogin
	
	self endPoint connectionHandler accountInfo: self class validAccountInfo.
	self assert: (self endPoint login)