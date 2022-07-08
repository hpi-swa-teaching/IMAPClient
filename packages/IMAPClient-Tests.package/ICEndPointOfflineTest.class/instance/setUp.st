running
setUp

	| connectionHandler folder |
	
	self helper: ICSetUpTestHelper new.
	
	connectionHandler := ICConnectionHandler new
		stream: ICNullStream new;
		storedCommands: ICMockCommandStorage new.
	
	self endPoint: (ICEndPoint new connectionHandler: connectionHandler).
	folder := ICFolder new endpoint: self endPoint.
	folder parent: folder.
	
	self endPoint
		rootFolder: folder;
		folderNameOfTrash: self trashFolderName;
		readWriter: ICMockReadWriter new.
	
	self helper endpoint:  self endPoint.
	self email: (self class mailIn: folder)