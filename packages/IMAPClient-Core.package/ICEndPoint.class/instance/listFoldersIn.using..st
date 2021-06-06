storage
listFoldersIn: root using: filter

	"self 
		checkConnected;
		checkLoggedIn."
		
	self connectionHandler listSubfoldersOf: root filterBy: filter.
		
	^ self parseListResponse