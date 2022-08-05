accessing - folder
folderWith: endpoint

	endpoint connectionHandler
		checkConnected;
		checkLoggedIn.
	
	^ endpoint
		listAllFolders;
		rootFolder