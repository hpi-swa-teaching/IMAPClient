folder hierarchy
childFolderNamed: name

	^ self childFolderNamed: name ifAbsent: [Error signal: self class errorChildDoesNotExist]