testing
testMoveEmailOffline

	| moveToFolder |
	moveToFolder := self helper createAFolder: 'moveToFolder'.
	self helper endpoint connectionHandler: ICMockConnectionHandler new.
	
	self helper endpoint moveEmail: self email to: moveToFolder folderName.

	self assert: self email folderName equals: moveToFolder folderName.
	self assert: moveToFolder emails first equals: self email