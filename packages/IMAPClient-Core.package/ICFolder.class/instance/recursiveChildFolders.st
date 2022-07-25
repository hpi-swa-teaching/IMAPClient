accessing
recursiveChildFolders

	^ {self. self childFolders collect: [:child | child recursiveChildFolders]} flatten asOrderedCollection