folder hierarchy
path

	^ (self parent == self endpoint rootFolder) 
		ifTrue: [ self name ] 
		ifFalse: [ self parent path, self endpoint hierarchyDelimiter, self name]