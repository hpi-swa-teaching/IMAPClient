accessing - folder
shownTopLevelFolders

	self rootFolder ifNil: [^ OrderedCollection new].
	self selectedEndPoint ifNil: [^ OrderedCollection new].
	
	^ self rootFolder childFoldersSorted reject: [:aFolder | self selectedEndPoint accountSettings notSyncedFolders contains: [:aFolderName | aFolderName = aFolder folderName]]