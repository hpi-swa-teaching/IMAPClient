connectOn
testConnectToOn
	
	self 
		shouldnt: [endPoint connectTo: self class validHost on: self class validPort with: ICMockSocketStream] 
		raise: Exception