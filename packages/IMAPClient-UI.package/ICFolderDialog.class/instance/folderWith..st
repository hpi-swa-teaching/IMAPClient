accessing - folder
folderWith: anICEndPoint

	anICEndPoint connectionHandler
		checkConnected;
		checkLoggedIn.
	
	^ anICEndPoint
		listAllFolders;
		rootFolder