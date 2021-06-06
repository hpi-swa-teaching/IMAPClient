connectOn
testConnectToOn
	
	self endPoint connectionHandler accountInfo: self class validAccountInfo.
	self	shouldnt: [self endPoint connectWith: ICMockSocketStream] 
		raise: Exception