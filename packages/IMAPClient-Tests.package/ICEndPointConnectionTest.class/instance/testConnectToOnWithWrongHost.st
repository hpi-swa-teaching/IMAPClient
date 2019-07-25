connectOn
testConnectToOnWithWrongHost

	self endPoint accountInfo: self class invalidHostAccountInfo.
	self endPoint connectWith: ICMockSocketStream.
	self assert: self endPoint fatalErrorOccured equals: true