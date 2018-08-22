folder selection
getFolderWith: endpoint
	
	 ^ endpoint 
		checkConnected;
		checkLoggedIn;
		listAllFolders;
		rootFolder