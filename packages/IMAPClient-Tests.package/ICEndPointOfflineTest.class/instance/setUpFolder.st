running
setUpFolder

	| folder |
	self trashFolder: (self helper createAFolder: self trashFolderName).
	self trashFolder folderType: #Trash.
	self helper writeFolderOnDisk: self trashFolder.
	folder := self helper createAFolder: 'folder'.
	self email: (self helper createAnEmail: folder)