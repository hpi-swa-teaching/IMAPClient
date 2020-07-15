testing
testAccountNameUsed

	ICEndPoint addConfiguration: self accountInfo.
	self assert: self accountInfo accountNameUnused not.
	ICEndPoint removeConfiguration: self accountInfo.
	