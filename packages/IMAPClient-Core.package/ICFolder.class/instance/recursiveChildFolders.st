accessing
recursiveChildFolders
	
	| childFolderCollection |
	
	childFolderCollection := self childFolders collect: [:child | child recursiveChildFolders].
	childFolderCollection add: self childFolders.
	
	^ childFolderCollection flatten