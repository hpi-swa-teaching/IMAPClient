instance creation
parseFromServer: anICEndPoint
	 ^ anICEndPoint 
		checkConnected;
		checkLoggedIn;
		listAllFolders;
		rootFolder