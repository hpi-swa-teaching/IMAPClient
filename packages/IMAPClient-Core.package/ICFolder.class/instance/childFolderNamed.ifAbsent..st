action - folder hierarchy
childFolderNamed: childFolderName ifAbsent: block

	^ self childFolders
		detect: [:child | child folderName = childFolderName]
		ifNone: [block value]