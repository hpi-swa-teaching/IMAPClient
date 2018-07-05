instance creation
named: name in: parent
	
	| newFolder |
	
	newFolder := self new.
	newFolder	name: name.
		
	parent addFolder: newFolder.
	^ newFolder