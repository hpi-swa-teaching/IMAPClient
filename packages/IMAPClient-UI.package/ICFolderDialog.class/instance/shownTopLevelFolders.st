accessing - folder
shownTopLevelFolders

	self rootFolder ifNil: [^ OrderedCollection new].
	self selectedEndpoint ifNil: [^ OrderedCollection new].
	
	^ self rootFolder childFoldersSorted reject: [:aFolder | self selectedEndpoint accountSettings notSyncedFolders contains: [:aFolderName | aFolderName = aFolder folderName]]