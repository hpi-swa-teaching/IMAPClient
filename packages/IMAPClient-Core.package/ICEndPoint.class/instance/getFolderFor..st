protocol handling - move
getFolderFor: aFolderName

	^ self rootFolder childFolderNamed: aFolderName with: self hierarchyDelimiter ifAbsent: []