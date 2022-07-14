running
setUp

	| connectionHandler folder |
	
	
	connectionHandler := ICConnectionHandler new
		stream: ICNullStream new;
		storedCommands: ICMockCommandStorage new.
	
	self helper: ICSetUpTestHelper new.
	self helper endpoint connectionHandler: connectionHandler;
		folderNameOfTrash: self trashFolderName;
		readWriter:( ICFileReadWriter new endpoint: self helper endpoint).
	
	self trashFolder: (self helper createAFolder: self trashFolderName).
	self trashFolder folderType: #Trash.
	self helper writeFolderOnDisk: self trashFolder.
	
	folder := self helper createAFolder: 'folder'.
	
	self email: (self helper createAnEmail: folder)