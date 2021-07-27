testing
testDeleteEmailOnline	
	
	self email folder childFolders add: self trashFolder.
	self endPoint deleteEmail: self email.
	self endPoint connectionHandler stream: ICMockSocketStream new.
	
	self email folder retrieveFlagsFor: self email.	
	self assert: (self endPoint connectionHandler storedCommands isEmptyFor:  self endPoint accountInfo username).
	
	self deny: self email seen.
	self assert: (self endPoint connectionHandler storedCommands isEmptyFor: self endPoint accountInfo username)