instance creation
named: name in: parent with: endpoint

	| newFolder |
	
	newFolder := (self new)
		folderName: name;
		endpoint: endpoint.
	
	newFolder iconName: (ICFolder getDefaultIcon: name).
		
	parent addFolder: newFolder.
	
	^ newFolder