accessing
testSwitchFlagOnline

	self testSwitchFlagOffline.
	self endPoint connectionHandler stream: ICMockSocketStream new.
	self deny: (self endPoint connectionHandler storedCommands isEmptyFor: self endPoint accountInfo username).
	self email folder switchFlag: 'flagged' for: self email to: true.
	self assert: (self email flagged and: self email seen).
	self assert: (self endPoint connectionHandler storedCommands isEmptyFor: self endPoint accountInfo username)