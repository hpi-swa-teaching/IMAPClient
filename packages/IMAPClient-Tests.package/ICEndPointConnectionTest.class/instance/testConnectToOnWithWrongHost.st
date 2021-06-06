connectOn
testConnectToOnWithWrongHost

	self endPoint connectionHandler accountInfo: self class invalidHostAccountInfo.
	self endPoint connectWith: ICMockSocketStream.
	self assert: self endPoint fatalErrorOccured equals: true