testing
testSwitchFlagOnline

	self endPoint connectionHandler stream: ICMockSocketStream new.
	
	self email folder switchFlag: 'seen' for: self email to: false.
	
	self deny: self email seen.
	self assert: (self endPoint connectionHandler storedCommands isEmptyFor: self endPoint accountInfo username)