write file
createPathIfNotExisting: aPath

	| current_directory |
	current_directory := FileDirectory default.
	(aPath subStrings: (FileDirectory slash)) reverseDo: 
		[ :path | 
			(current_directory directoryExists: path) ifFalse: [current_directory createDirectory: path].
			current_directory := current_directory directoryNamed: path.].
	^ current_directory