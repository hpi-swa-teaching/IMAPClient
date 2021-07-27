testing
testMoveEmailOffline

	self email folder childFolders add: self folderForMoving.
	
	self assert: self endPoint connectionHandler isCommandStorageEmpty.	
	
	self endPoint moveEmail: self email to: self folderForMoving folderName.
	
	self deny: self endPoint connectionHandler isCommandStorageEmpty.
	self deny: (self endPoint movedMailStorage isEmptyFor: self endPoint accountName).
	self assert: self email folder folderName equals: self folderForMoving folderName