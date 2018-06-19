accessing
changeAccounts: anAccount

	
	anAccount ifNil: [^self].	
	self getFolderWith: anAccount.
	
	self rootFolder: (Array with: anAccount rootFolder).
	self selectedFolder: nil.
	
	self changed: #selectedFolder.	
	self changed: #rootFolder.
	self changed: #childFolders.
	self changed: #emailsOfSelectedFolder
	
		
	 	