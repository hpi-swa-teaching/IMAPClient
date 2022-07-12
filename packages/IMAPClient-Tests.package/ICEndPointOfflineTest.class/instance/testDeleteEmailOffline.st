testing
testDeleteEmailOffline

	self endPoint readWriter: (ICFileReadWriter new endpoint: self endPoint).
	
	self email folder addFolder: self trashFolder.
	
	self assert: self endPoint connectionHandler isCommandStorageEmpty.
	
	self endPoint deleteEmail: self email.
	
	self deny: self endPoint connectionHandler isCommandStorageEmpty.
	self deny: (self endPoint movedMailStorage isEmptyFor: self endPoint accountName).
	self assert: self email folder isTrashFolder