testing
testExpungeEmailOnline	
	
	self folder emails add: self email.
	self email deleted: true.
	self folder expungeEmails.
	
	self endPoint connectionHandler stream: ICMockSocketStream new.
	
	self email folder retrieveFlagsFor: self email.	
	self assert: self folder emails isEmpty.
	self assert: (self folder childFolders allSatisfy: [:aFolder | aFolder isEmpty])
	