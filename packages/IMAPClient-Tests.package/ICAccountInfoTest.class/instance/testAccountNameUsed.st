testing
testAccountNameUsed

	ICEndPoint addConfiguration: self accountInfo asDictionary.
	self assert: self accountInfo accountNameUnused not.
	ICEndPoint removeConfiguration: self accountInfo asDictionary.
	