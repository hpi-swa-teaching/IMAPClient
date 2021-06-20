fetch
listFoldersIn: root using: filter

	self 
		checkConnected;
		checkLoggedIn.
		
	self sendCommand: (ICCommand listSubfoldersOf: root filterBy: filter).
		
	^ self parseListResponse