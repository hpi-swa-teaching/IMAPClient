hierarchy
childFolderNamed: name ifAbsent: block

	^ self childFolders 
		detect: [ :child | child name = name ] 
		ifNone: [ block value ]
