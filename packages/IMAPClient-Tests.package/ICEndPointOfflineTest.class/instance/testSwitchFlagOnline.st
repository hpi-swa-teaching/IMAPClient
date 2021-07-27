testing
testSwitchFlagOnline

	self email folder switchFlag: 'seen' for: self email to: true.
	self deny: self endPoint connectionHandler isCommandStorageEmpty.

	self endPoint connectionHandler stream: ICMockSocketStream new.
	
	self email folder switchFlag: 'seen' for: self email to: false.
	
	self deny: self email seen.
	self assert: self endPoint connectionHandler isCommandStorageEmpty