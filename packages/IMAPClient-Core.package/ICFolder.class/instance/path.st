action - folder hierarchy
path

	^ self parent == self rootFolder
		ifTrue: [self folderName]
		ifFalse: [self parentPath, self hierarchyDelimiter, self folderName]