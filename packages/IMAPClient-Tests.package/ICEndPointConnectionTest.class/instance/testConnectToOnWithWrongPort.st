connectOn
testConnectToOnWithWrongPort

	self should: [ self endPoint connectTo: self class validHost on: self class invalidPort with: ICMockSocketStream ] raise: Exception