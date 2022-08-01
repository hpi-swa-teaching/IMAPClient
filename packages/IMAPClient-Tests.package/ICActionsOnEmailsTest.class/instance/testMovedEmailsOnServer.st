testing
testMovedEmailsOnServer

	| folder1 folder2 |
	
	self connectionHandler stream: ICMockSocketStream new.
	folder1 := self helper createAFolder: 'folder1'.
	folder2 := self helper createAFolder: 'folder2'.
	self helper createAnEmail: folder1.
	
	self serverRespondsEmailsMoved: folder1 to: folder2.
	
	self assert: folder1 emails isEmpty.
	self assert: folder2 emails size equals: 2