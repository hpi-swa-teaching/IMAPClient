connectOn
testConnectToOnWithWrongPort

	self
		should: [
			self endpoint connectionHandler
				accountInfo: self class invalidPortAccountInfo;
				connectWith: ICMockSocketStream]
		raise: Error.
	self assert: self endpoint connectionHandler fatalErrorOccured equals: true