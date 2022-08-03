testing
testExpungeEmailOffline

	self folder emails add: self email.
	self email deleted: true.
	self folder expungeEmails.
	
	self assert: self folder emails isEmpty.
	self deny: self connectionHandler isCommandStorageEmpty