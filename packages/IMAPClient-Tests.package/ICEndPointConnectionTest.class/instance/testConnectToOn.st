connectOn
testConnectToOn
	
	self endPoint accountInfo: self class validAccountInfo.
	self	shouldnt: [endPoint connectWith: ICMockSocketStream] 
		raise: Exception