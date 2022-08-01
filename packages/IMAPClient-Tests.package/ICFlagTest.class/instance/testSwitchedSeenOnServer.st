tests
testSwitchedSeenOnServer

	self emails first seen: true.
	self emails second seen: false.
	
	self serverRespondsEmailsSeen.
	
	self assert: self emails first seen equals: true.
	self assert: self emails second seen equals: true