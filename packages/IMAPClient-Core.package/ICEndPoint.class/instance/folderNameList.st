storage
folderNameList

	^ (self rootFolder recursiveChildFolders reject: [:aFolder | aFolder = self rootFolder]) collect: [:aFolder | aFolder folderName]