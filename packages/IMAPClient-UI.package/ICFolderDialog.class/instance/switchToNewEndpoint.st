accountManagment
switchToNewEndpoint

	
	self selectedEndpoint ifNil: [^self].	
	self folderWith: self selectedEndpoint.
	
	self rootFolder: (Array with: self selectedEndpoint rootFolder).
	self selectedFolder: nil.
	
	self 
		changed: #selectedFolder;
		changed: #rootFolder;
		changed: #childFolders;
		changed: #emailsOfSelectedFolder;
		changed: #selectedEndpoint