folder selection
childFolders

	(self rootFolder)
		ifNil: [ ^ OrderedCollection new].
		
	^ (self rootFolder at: 1) childFolders