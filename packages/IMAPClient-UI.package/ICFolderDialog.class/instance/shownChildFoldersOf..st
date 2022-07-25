accessing - folder
shownChildFoldersOf: folder

	^ folder childFoldersSorted reject: [:aFolder | self selectedEndpoint accountSettings notSyncedFolders contains: [:aFolderName | aFolderName = aFolder folderName]]