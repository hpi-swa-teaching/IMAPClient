accessing
collectAllChildFolders

	|allFolders | 
	
	allFolders:= self collectAllFolders.
	allFolders remove: self. 
	
	^ allFolders