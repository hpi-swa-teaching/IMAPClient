instance creation
named: name in: parent with: endpoint
	
	| newFolder |
	newFolder := self new.
	newFolder 
		name: name;
		endpoint: endpoint.
		
	parent addFolder: newFolder.
	^ newFolder