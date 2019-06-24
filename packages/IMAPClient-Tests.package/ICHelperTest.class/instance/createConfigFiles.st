helper
createConfigFiles
		
	| directory |
	
	directory := FileDirectory default.	
	
	(directory directoryExists: 'Maildir')
 		ifFalse: [directory createDirectory: 'Maildir'].
  	
	directory := directory directoryNamed: 'Maildir'.
	
	(directory directoryExists: 'config')
 		ifFalse: [directory createDirectory: 'config'].
  	
	directory := directory directoryNamed: 'config'.	
		
	self class configFiles do: [:config | 	
		FileStream forceNewFileNamed: (directory fullPathFor: (config at: 'name')) do:
			[:stream | stream 
				wantsLineEndConversion: false;
				nextPutAll: (config at: 'name') ; cr;
				nextPutAll: (config at: 'address'); cr;
				nextPutAll: (config at: 'port') asString;  cr;
				nextPutAll: (config at: 'username'); cr;
				nextPutAll: (config at: 'ssl') asString; cr;
				close]].
	
     ^ directory