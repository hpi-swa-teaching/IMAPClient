testing
testExpungeEmailOnline

	self email deleted: true.
	self folder expungeEmails.
	
	self email folder retrieveFlagsFor: self email.
	self assert: self folder emails isEmpty.
	self assert: (self folder childFolders allSatisfy: [:aFolder | aFolder isEmpty])