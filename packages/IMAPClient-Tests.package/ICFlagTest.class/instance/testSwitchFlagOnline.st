tests
testSwitchFlagOnline

	self helper endPoint isConnected: true.
	
	self emails first flagged: true.
	self emails second flagged: false.
	
	self folder switchFlag: #flagged for: self emails first to: false.
	self folder switchFlag: #flagged for: self emails second to: false.
	
	self assert: self emails first flagged equals: false.
	self assert: self emails second flagged equals: false