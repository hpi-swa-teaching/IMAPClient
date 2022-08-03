testing
testMoveEmailOffline

	self folder addFolder: self trashFolder.
	self assert: self endPoint connectionHandler isCommandStorageEmpty.
	
	self endPoint moveEmail: self email to: self trashFolder folderName.
	
	self deny: self connectionHandler isCommandStorageEmpty.
	self deny: (self endPoint movedMailStorage isEmptyFor: self endPoint accountName).
	self assert: self folder folderName equals: self trashFolder folderName