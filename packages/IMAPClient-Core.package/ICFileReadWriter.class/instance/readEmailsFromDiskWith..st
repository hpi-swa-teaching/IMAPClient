read file
readEmailsFromDiskWith: anEndpoint

	| directory |
	
 	directory := FileDirectory default.
 	(directory directoryExists: 'Maildir')
 		ifFalse: [directory createDirectory: 'Maildir'].
	
  	((directory directoryNamed: 'Maildir') directoryExists: anEndpoint rootFolderName)
    		ifFalse: [^ (OrderedCollection new)].
	
	self recursivelyReadFolderStructureWith: directory and: anEndpoint rootFolderName and: anEndpoint rootFolder and: anEndpoint