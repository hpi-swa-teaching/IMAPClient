connectOn
testConnectToOnWithWrongHost

	[self 
		should: [self endPoint connectTo: self class invalidHost on: self class invalidPort with: ICMockSocketStream] 
		raise: Exception] valueSuppressingAllMessages