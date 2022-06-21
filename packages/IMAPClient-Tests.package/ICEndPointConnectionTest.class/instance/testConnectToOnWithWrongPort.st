connectOn
testConnectToOnWithWrongPort

	self
		should: [
			self endPoint connectionHandler
				accountInfo: self class invalidPortAccountInfo;
				connectWith: ICMockSocketStream]
		raise: Error.
	self assert: self endPoint connectionHandler fatalErrorOccured equals: true