read file
readEmailsSmartFromDiskWith: anEndpoint

	| directory rootDirectory |
	
 	directory := FileDirectory default.
 	(directory directoryExists: 'Maildir')
 		ifFalse: [directory createDirectory: 'Maildir'].
	rootDirectory := (directory directoryNamed: 'Maildir') directoryNamed: anEndpoint rootDirectoryName.
  	rootDirectory 
		withAllFilesDo: [:test |] 
		andDirectoriesDo: 
			(self directoryVisitorWith: anEndpoint rootFolder and: rootDirectory and: anEndpoint)