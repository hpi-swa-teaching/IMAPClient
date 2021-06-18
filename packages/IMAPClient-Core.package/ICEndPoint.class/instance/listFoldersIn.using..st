storage
listFoldersIn: root using: filter
		
	self connectionHandler listSubfoldersOf: root filterBy: filter.
		
	^ self parseListResponse