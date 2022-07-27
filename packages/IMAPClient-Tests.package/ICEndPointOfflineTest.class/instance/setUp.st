running
setUp

	self helper: ICSetUpTestHelper new.
	self helper endpoint: ICEndPoint new.
	self helper endpoint
		folderNameOfTrash: self trashFolderName;
		readWriter: (ICFileReadWriter new endpoint: self helper endpoint).
	self setUpConnectionHandler.
	self setUpFolder