instance creation
named: name in: parent
	
	| newFolder |
	
	newFolder := self new.
	newFolder folderName: name.
		
	parent addFolder: newFolder.
	
	^ newFolder