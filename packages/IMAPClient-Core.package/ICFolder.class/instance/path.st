folder hierarchy
path

	^ (self parent == self endpoint rootFolder) 
		ifTrue: [ self folderName ] 
		ifFalse: [ self parent path, self endpoint hierarchyDelimiter, self folderName]