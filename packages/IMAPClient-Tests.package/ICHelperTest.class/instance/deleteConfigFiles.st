as yet unclassified
deleteConfigFiles
		
		
	| directory |
	
	directory := self getConfigDirectory.
	
	self class configFiles do: [ :config | 		
		(directory fileOrDirectoryExists: (config at: 'name'))
			ifTrue: [directory deleteFileNamed: (config at: 'name')]
		]
		
			
  		