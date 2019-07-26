connectOn
testConnectToOn
	
	self endPoint accountInfo: self class validAccountInfo.
	self	shouldnt: [self endPoint connectWith: ICMockSocketStream] 
		raise: Exception