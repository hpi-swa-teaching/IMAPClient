testing
testMoveEmailOffline

	| moveToFolder |
	moveToFolder := self helper createAFolder: 'moveToFolder'.
	self helper endPoint moveEmail: self email to: moveToFolder folderName.
	self assert: self email folderName equals: moveToFolder folderName.
	self assert: moveToFolder emails first equals: self email