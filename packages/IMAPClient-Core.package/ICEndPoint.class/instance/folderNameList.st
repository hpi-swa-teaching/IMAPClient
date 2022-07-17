storage
folderNameList
	
	^ self rootFolder recursiveChildFolders collect: [:aFolder | aFolder folderName]