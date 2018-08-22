folder hierarchy
childFolderNamed: name with: delimiter

	^ self 
			childFolderNamed: name 
			with: delimiter 
			ifAbsent: [Error signal: self class errorChildDoesNotExist]