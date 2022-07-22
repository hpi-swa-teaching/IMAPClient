testing
testMoveEmailOffline

	| moveToFolder |
	moveToFolder := self helper createAFolder: 'moveToFolder'.
	self assert: self connectionHandler isCommandStorageEmpty.
	
	self helper endpoint moveEmail: self email to: moveToFolder folderName. "self trashFolder folderName."
	
	self deny: self connectionHandler isCommandStorageEmpty.
	self assert: self email folderName equals: moveToFolder folderName