running
setUp

	| connectionHandler folder |
	connectionHandler := ICConnectionHandler new 
		stream: ICNullStream new;
		storedCommands: ICMockCommandStorage new.
	
	self endPoint: (ICEndPoint new connectionHandler: connectionHandler).
	folder := ICFolder new endpoint: self endPoint.
	folder parent: folder.
	
	self endPoint rootFolder: folder;
		folderNameOfTrash: self trashFolderName;
		readWriter: ICMockReadWriter new.
		
	self email: (self class mailIn: folder)
