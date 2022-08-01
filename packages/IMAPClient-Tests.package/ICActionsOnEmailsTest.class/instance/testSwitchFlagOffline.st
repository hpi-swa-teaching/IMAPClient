testing
testSwitchFlagOffline

	self folder switchFlag: 'seen' for: self email to: true.
	self assert: self email seen