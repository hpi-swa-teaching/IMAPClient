testing
testSwitchFlagOffline

	self assert: (self endPoint connectionHandler storedCommands isEmptyFor:  self endPoint accountInfo hash).		
	
	self email folder switchFlag: 'seen' for: self email to: true.

	self deny: (self endPoint connectionHandler storedCommands isEmptyFor:  self endPoint accountInfo username).
	self assert: self email seen.