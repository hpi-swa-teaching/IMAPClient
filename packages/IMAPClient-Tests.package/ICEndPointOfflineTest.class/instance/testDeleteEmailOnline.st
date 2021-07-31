testing
testDeleteEmailOnline	
	
	self email folder addFolder: self trashFolder.
	self endPoint deleteEmail: self email.
	
	self endPoint connectionHandler stream: ICMockSocketStream new.
	
	self email folder retrieveFlagsFor: self email.	
	self assert: self connectionHandler isCommandStorageEmpty