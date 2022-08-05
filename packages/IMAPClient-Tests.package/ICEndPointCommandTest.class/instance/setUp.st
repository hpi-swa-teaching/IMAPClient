running
setUp

	self helper: ICSetUpTestHelper new.
	self helper endPoint: ICEndPoint new.
	self setUpFolders.
	self setUpConnectionHandler.
	self endPoint: self helper endPoint