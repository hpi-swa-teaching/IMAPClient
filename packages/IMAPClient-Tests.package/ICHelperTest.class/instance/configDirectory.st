as yet unclassified
configDirectory

	| directory |
			
	directory := FileDirectory default.	
	(directory directoryExists: 'Maildir')
		ifFalse: [directory createDirectory: 'Maildir'].
  	
	directory := directory directoryNamed: 'Maildir'.
	
	(directory directoryExists: 'config')
 		ifFalse: [directory createDirectory: 'config'].
  	
	directory := directory directoryNamed: 'config'.	
		
	^ directory