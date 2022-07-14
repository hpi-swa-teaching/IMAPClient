testing
testDeleteEmailOnline
	
	self helper endpoint deleteEmail: self email.
	self connectionHandler stream: ICMockSocketStream new.
	
	self email folder retrieveFlagsFor: self email.
	self assert: self connectionHandler isCommandStorageEmpty