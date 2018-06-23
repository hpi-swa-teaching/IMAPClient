accountManagment
changeAccounts: anAccount

	
	anAccount ifNil: [^self].	
	self getFolderWith: anAccount.
	
	self rootFolder: (Array with: anAccount rootFolder).
	self selectedFolder: nil.
	
	self 
		changed: #selectedFolder;
		changed: #rootFolder;
		changed: #childFolders;
		changed: #emailsOfSelectedFolder
		
	 	