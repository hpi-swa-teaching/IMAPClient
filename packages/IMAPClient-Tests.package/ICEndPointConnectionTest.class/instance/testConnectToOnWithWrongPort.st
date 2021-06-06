connectOn
testConnectToOnWithWrongPort

	self endPoint connectionHandler accountInfo: self class invalidPortAccountInfo.
	self endPoint connectWith: ICMockSocketStream.
	self assert: self endPoint fatalErrorOccured equals: true