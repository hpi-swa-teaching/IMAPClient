connectOn
testConnectToOn
	
	self endPoint connectionHandler accountInfo: self class validAccountInfo.
	self	shouldnt: [self endPoint connectionHandler connectWith: ICMockSocketStream] 
		raise: Exception