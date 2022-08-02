connectOn
testConnectToOnWithWrongHost

	self
		should: [
			self endpoint connectionHandler
				accountInfo: self class invalidHostAccountInfo;
				connectWith: ICMockSocketStream]
		raise: Error.
	self assert: self endpoint connectionHandler fatalErrorOccured equals: true