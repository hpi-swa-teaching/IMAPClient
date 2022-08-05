accessing - folder
shownChildFoldersOf: folder

	^ folder childFoldersSorted reject: [:aFolder | self selectedEndPoint accountSettings notSyncedFolders contains: [:aFolderName | aFolderName = aFolder folderName]]