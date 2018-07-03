instance creation
named: name in: parent with: endpoint
	| newFolder |
	
	newFolder := (self new)
		name: name;
		endpoint: endpoint.
	parent addFolder: newFolder.
	^ newFolder