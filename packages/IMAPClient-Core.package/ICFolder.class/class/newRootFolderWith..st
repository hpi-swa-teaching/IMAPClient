instance creation
newRootFolderWith: endpoint
	
	| newFolder |
	newFolder := self new.
	newFolder endpoint: endpoint.
		
	^ newFolder