accessing - folder
shownChildFolders

	self rootFolder ifNil: [^ OrderedCollection new].
	
	^ self rootFolder childFoldersSorted reject: [:aFolder | self selectedEndpoint accountSettings notSyncedFolders contains: [:aFolderName | aFolderName = aFolder folderName]]