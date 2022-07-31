tests
testSwitchedFlagOnline

	self emails first flagged: true.
	self emails second flagged: false.
	
	self serverRespondsEmailsUnflagged.
	
	self assert: self emails first flagged equals: false.
	self assert: self emails second flagged equals: false