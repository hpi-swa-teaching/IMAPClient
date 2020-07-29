read file
readEmailsFromDiskWith: anEndpoint

	| directory |
	
 	directory := FileDirectory default.
 	(directory directoryExists: 'Maildir')
 		ifFalse: [directory createDirectory: 'Maildir'].
	
  	((directory directoryNamed: 'Maildir') directoryExists: anEndpoint rootDirectoryName)
    		ifFalse: [^ (OrderedCollection new)].
		
	self recursivelyReadFolderStructureWith: directory and: anEndpoint rootDirectoryName and: anEndpoint rootFolder and: anEndpoint