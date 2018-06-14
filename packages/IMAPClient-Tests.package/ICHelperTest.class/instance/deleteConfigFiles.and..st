as yet unclassified
deleteConfigFiles: firstFileName and: secondFileName
		
		
	| directory |
	
	directory :=  self getConfigDirectory.
				
	(directory fileOrDirectoryExists: (firstFileName)) ifTrue: [directory deleteFileNamed: (firstFileName)].
	(directory fileOrDirectoryExists: (secondFileName)) ifTrue: [directory deleteFileNamed: (secondFileName)].	
