connectOn
testConnectToOnWithWrongHost

	self endPoint connectTo: self class invalidHost on: self class invalidPort with: ICMockSocketStream.
	self assert: self endPoint fatalErrorOccured equals: true