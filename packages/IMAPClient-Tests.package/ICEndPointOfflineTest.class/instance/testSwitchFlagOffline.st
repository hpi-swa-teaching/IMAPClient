testing
testSwitchFlagOffline

	self assert: self connectionHandler isCommandStorageEmpty.		
	
	self folder switchFlag: 'seen' for: self email to: true.

	self deny: self connectionHandler isCommandStorageEmpty.
	self assert: self email seen