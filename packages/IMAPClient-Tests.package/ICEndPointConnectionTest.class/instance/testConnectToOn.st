connectOn
testConnectToOn

	self endpoint connectionHandler accountInfo: self class validAccountInfo.
	self shouldnt: [self endpoint connectionHandler connectWith: ICMockSocketStream] raise: Exception