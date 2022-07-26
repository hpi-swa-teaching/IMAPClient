testing
testDeleteEmailOnline
	"self connectionHandler accountInfo: self helper getTestAccount."
	self helper endpoint deleteEmail: self email.
	self connectionHandler stream: ICMockSocketStream new.
	self email folder retrieveFlagsFor: self email.
	self assert: self connectionHandler isCommandStorageEmpty