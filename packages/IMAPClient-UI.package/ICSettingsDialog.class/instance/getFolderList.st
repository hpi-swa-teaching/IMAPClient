accessing
getFolderList
	
	^ self selectedEndpoint rootFolder childFolders collect: [:aFolder | aFolder folderName]