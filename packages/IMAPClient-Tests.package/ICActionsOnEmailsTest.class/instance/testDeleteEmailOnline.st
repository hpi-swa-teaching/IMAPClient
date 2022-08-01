testing
testDeleteEmailOnline

	self connectionHandler stream: ICMockSocketStream new.
	self connectionHandler stream connected: true.
	self assert: self email deleted not.
	self helper endpoint deleteEmail: self email.
	self email folder retrieveFlagsFor: self email.
	self assert: self email deleted.
	self assert: self connectionHandler isCommandStorageEmpty