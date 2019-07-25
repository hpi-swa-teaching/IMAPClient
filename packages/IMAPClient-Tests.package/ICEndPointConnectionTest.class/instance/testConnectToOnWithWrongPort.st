connectOn
testConnectToOnWithWrongPort

	self endPoint accountInfo: self class invalidPortAccountInfo.
	self endPoint connectWith: ICMockSocketStream.
	self assert: self endPoint fatalErrorOccured equals: true