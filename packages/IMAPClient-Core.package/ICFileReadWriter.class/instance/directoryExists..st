verification
directoryExists: aPathString

	^ FileDirectory default directoryExists: (FileDirectory default fullPathFor: aPathString)