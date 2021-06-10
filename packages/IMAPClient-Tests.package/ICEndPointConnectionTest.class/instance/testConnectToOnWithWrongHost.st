connectOn
testConnectToOnWithWrongHost

	self endPoint connectionHandler 
		accountInfo: self class invalidHostAccountInfo;
		connectWith: ICMockSocketStream.
	self assert: self endPoint connectionHandler fatalErrorOccured equals: true