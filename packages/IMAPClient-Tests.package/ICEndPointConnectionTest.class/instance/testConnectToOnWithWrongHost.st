connectOn
testConnectToOnWithWrongHost

	self should: [self endPoint connectionHandler 
		accountInfo: self class invalidHostAccountInfo;
		connectWith: ICMockSocketStream] raise: Error.
	self assert: self endPoint connectionHandler fatalErrorOccured equals: true