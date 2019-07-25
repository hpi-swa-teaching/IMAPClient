accessing
recursiveChildFolders
	
	^ {self childFolders collect: [:child | child recursiveChildFolders]. self childFolders} flatten asOrderedCollection