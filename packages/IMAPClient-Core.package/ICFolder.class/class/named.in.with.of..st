instance creation
named: name in: parent with: endPoint of: aType

	| newFolder |
	newFolder := self new
		folderName: name;
		endPoint: endPoint;
		folderType: aType.
	
	parent addFolder: newFolder.
	
	^ newFolder