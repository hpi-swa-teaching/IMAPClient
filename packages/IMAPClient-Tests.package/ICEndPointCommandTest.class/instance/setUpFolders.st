running
setUpFolders

	self rootFolder: ICFolder new.
	self rootFolder endpoint: self helper endpoint.
	self helper endpoint rootFolder: self rootFolder;
		 currentFolderName: 'inbox';
		 hierarchyDelimiter: '\'.
	self inboxFolder:( self helper createAFolder: 'inbox').
	self inboxFolder folderType: #Inbox.
