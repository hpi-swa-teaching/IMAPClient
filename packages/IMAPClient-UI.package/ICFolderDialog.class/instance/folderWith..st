accessing - folder
folderWith: endpoint
	
	 ^ endpoint 
		checkConnected;
		checkLoggedIn;
		listAllFolders;
		rootFolder