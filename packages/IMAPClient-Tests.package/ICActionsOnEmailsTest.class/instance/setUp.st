running
setUp

	self helper: ICSetUpTestHelper new.
	self helper endPoint: ICEndPoint new.
	self helper endPoint
		folderNameOfTrash: self trashFolderName;
		readWriter: (ICFileReadWriter new endPoint: self helper endPoint).
	self setUpConnectionHandler.
	self setUpFolder