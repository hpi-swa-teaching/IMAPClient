instance creation
parseFromServer: anICEndPoint

	^ anICEndPoint 
		checkConnected;
		checkLoggedIn;
		listAllFolders;
		fetchAllHeaders;
		rootFolder.
		
	
	
	