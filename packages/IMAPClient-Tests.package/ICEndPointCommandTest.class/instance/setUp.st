running
setUp

	self helper: ICSetUpTestHelper new.
	self helper endpoint: ICEndPoint new.
	self setUpFolders.
	self setUpConnectionHandler.
	self endpoint: self helper endpoint