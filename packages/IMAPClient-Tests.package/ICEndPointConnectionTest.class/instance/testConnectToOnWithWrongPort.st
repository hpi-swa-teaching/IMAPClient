connectOn
testConnectToOnWithWrongPort

	self endPoint connectionHandler 
		accountInfo: self class invalidPortAccountInfo;
		 connectWith: ICMockSocketStream.
	self assert: self endPoint connectionHandler fatalErrorOccured equals: true