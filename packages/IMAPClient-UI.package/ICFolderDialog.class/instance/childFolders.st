accessing - folder
childFolders

	(self rootFolder)
		ifNil: [^ OrderedCollection new].
		
	^ self rootFolder childFoldersSorted