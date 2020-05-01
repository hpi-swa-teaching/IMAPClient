folder selection
childFolders

	(self rootFolder)
		ifNil: [^ OrderedCollection new].
		
	^ self rootFolder childFolders