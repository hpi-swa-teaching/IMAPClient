testing
testSwitchFlagOffline

	self assert: self endPoint connectionHandler isCommandStorageEmpty.		
	
	self email folder switchFlag: 'seen' for: self email to: true.

	self deny: self endPoint connectionHandler isCommandStorageEmpty.
	self assert: self email seen