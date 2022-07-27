testing
testDeleteEmailOnline
	"self connectionHandler accountInfo: self helper getTestAccount."
	self connectionHandler stream: ICMockSocketStream new.
	self helper endpoint deleteEmail: self email.
	self email folder retrieveFlagsFor: self email.
	self assert: self connectionHandler isCommandStorageEmpty