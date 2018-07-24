connectOn
testConnectToOnWithWrongPort

	self endPoint connectTo: self class validHost on: self class invalidPort with: ICMockSocketStream.
	self assert: self endPoint fatalErrorOccured equals: true