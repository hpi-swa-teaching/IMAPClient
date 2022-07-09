testing
testWrite
	| folder  emailPath |

	folder := self  helper createAFolder: 'folder'.
	
	self readWriter write: (self class expectedMailObjectFor: self writeUID in: folder) in: folder.
	emailPath :=FileDirectory default / (self helper endpoint maildirFileName: folder folderName) / self writeUID.
	
	self
		assert: (self class givenJsonObjectFor: self writeUID)
		equals: (Json readFrom: (emailPath readStream)).
		
	