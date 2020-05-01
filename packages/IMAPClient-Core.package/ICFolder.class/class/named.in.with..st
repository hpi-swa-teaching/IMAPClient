instance creation
named: name in: parent with: endpoint

	| newFolder |
	
	newFolder := (self new)
		folderName: name;
		endpoint: endpoint.
		
	parent addFolder: newFolder.
	
	^ newFolder