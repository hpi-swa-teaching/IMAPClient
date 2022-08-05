running
setUpFolders

	self rootFolder: ICFolder new.
	self rootFolder endPoint: self helper endPoint.
	self helper endPoint
		rootFolder: self rootFolder;
		currentFolderName: 'inbox';
		hierarchyDelimiter: '\'.
	self inboxFolder: (self helper createAFolder: 'inbox').
	self inboxFolder folderType: #Inbox