login
testLogin

	self assert: (self endPoint login: self class validUsername using: self class validPassword)