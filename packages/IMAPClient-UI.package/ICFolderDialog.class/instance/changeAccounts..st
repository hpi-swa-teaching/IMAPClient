accountManagment
changeAccounts: anAccount

	
	anAccount ifNil: [^self].	
	self folderWith: anAccount.
	
	self rootFolder: (Array with: anAccount rootFolder).
	self selectedFolder: nil.
	
	self 
		changed: #selectedFolder;
		changed: #rootFolder;
		changed: #childFolders;
		changed: #emailsOfSelectedFolder