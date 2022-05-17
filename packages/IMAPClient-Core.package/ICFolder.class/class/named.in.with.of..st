instance creation
named: name in: parent with: endpoint of: aType

	| newFolder |
	
	newFolder := (self new)
		folderName: name;
		endpoint: endpoint;
		folderType: aType.
	
	newFolder iconName: (ICFolder getDefaultIcon: name).
		
	parent addFolder: newFolder.
	
	^ newFolder