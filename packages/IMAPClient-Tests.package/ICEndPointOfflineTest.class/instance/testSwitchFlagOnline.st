testing
testSwitchFlagOnline

	self folder switchFlag: 'seen' for: self email to: true.
	self deny: self connectionHandler isCommandStorageEmpty.
	self connectionHandler stream: ICMockSocketStream new.
	
	self folder switchFlag: 'seen' for: self email to: false.
	self deny: self email seen.
	self assert: self connectionHandler isCommandStorageEmpty