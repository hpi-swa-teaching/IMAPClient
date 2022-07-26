testing
testMoveEmailsOffline

	| numberOfEmails folder1 folder2 |
	
	numberOfEmails := 5.
	self helper endpoint connectionHandler: ICMockConnectionHandler new.
	folder1 := self helper createAFolder: 'folder1'.
	folder2 := self helper createAFolder: 'folder2'.
	
	self helper createNumberOfEmails: numberOfEmails in: folder1.
	
	[folder1 emails isEmpty] whileFalse:
		[self helper endpoint moveEmail: folder1 emails first to: folder2 folderName].
	
	self assert: folder1 emails isEmpty.
	self assert: folder2 emails size equals: numberOfEmails.
	 


