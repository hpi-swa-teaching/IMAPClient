hierarchy
path
	
	^ (self parent == self endpoint rootFolder) 
		ifTrue: [ self name ] 
		ifFalse: [ parent path, self endpoint hierarchyDelimiter , self name]