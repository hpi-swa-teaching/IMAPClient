tests
testToggleFlagOffline

	self helper endPoint isConnected: false.
	
	self emails first flagged: true.
	self emails second flagged: false.
	
	self folder toggleFlag: #flagged for: self emails first.
	self folder toggleFlag: #flagged for: self emails second.
	
	self assert: self emails first flagged equals: false.
	self assert: self emails second flagged equals: true