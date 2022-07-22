testing
testDeleteEmailOffline

	self assert: self helper endpoint connectionHandler isCommandStorageEmpty.
	
	self helper endpoint  deleteEmail: self email.
	
	self deny: self helper endpoint connectionHandler isCommandStorageEmpty.
	self assert: self email folder isTrashFolder