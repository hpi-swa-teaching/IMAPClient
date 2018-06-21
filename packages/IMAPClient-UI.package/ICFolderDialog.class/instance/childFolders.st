accessing
childFolders

	(rootFolder)
		ifNil: [ ^ OrderedCollection new].
		
	^ (rootFolder at: 1) childFolders