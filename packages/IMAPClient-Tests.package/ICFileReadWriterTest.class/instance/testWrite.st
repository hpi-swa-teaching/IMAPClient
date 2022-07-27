testing
testWrite

	| folder emailPath |
	folder := self helper createAFolder: 'folder'.
	
	self readWriter write: (self class expectedMailObjectIn: folder) in: folder.
	emailPath := FileDirectory default / (self helper endpoint maildirFileName: folder folderName) / self class writeID.
	
	self assert: self class givenJsonObject equals: (Json readFrom: emailPath readStream)