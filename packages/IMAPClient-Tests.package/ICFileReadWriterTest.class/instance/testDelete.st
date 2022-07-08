delteFile
testDelete

	| folder mail |
	"self createFileWith: self deleteUID."
	folder := self helper createAFolder: 'folder'.
	mail := self helper createAnEmail: folder.
	
	self assert: (FileDirectory default / (self endpoint maildirFileName: self helper endpoint rootFolder folderName) / mail uniqueID asString) exists.
	
	
	"self readWriter delete: (self class expectedMailObjectFor: self deleteUID in: self endpoint rootFolder).
	self assert: (FileDirectory default / self endpoint maildirFileName / self deleteUID asString) exists not"