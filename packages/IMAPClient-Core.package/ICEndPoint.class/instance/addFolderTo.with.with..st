storage
addFolderTo: aParentFolder with: aFolderName with: aFolderType

	^ aParentFolder childFolderNamed: aFolderName ifAbsent: [ | folder |
		folder := ICFolder named: aFolderName in: aParentFolder with: self of: aFolderType.
		self readWriter writeFolder: folder]