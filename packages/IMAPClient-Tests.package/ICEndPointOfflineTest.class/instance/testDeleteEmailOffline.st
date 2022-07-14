testing
testDeleteEmailOffline

	self assert: self helper endpoint connectionHandler isCommandStorageEmpty.
	
	self helper endpoint  deleteEmail: self email.
	
	self deny: self helper endpoint connectionHandler isCommandStorageEmpty.
	self deny: (self helper endpoint movedMailStorage isEmptyFor: self helper endpoint accountName).
	self assert: self email folder isTrashFolder