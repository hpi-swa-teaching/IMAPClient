folder selection
folderWith: endpoint
	
	 ^ endpoint 
		checkConnected;
		checkLoggedIn;
		listAllFolders;
		rootFolder