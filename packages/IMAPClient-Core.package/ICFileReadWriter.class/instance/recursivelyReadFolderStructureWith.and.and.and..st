read file
recursivelyReadFolderStructureWith: maildirDirectory and: directoryName and: currentFolder and: anEndpoint
	
	| currentDirectory childFolder currentPath |
	
	currentDirectory := maildirDirectory directoryNamed: directoryName.
	currentPath := maildirDirectory fullPathFor: directoryName.
	
	currentDirectory directoryNames do: [:foldername |
		childFolder := (ICFolder new) 
			folderName: foldername;
			endpoint: anEndpoint;
			yourself.
		currentFolder addFolder: childFolder.
		self recursivelyReadFolderStructureWith: currentDirectory and: foldername and: childFolder and: anEndpoint].
	
	self readEmailsFor: currentFolder From: currentPath in: currentDirectory