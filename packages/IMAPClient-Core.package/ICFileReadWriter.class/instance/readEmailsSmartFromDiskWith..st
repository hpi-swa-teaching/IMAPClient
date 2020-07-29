read file
readEmailsSmartFromDiskWith: anEndpoint

	| directory rootDirectory |
	
 	directory := FileDirectory default.
 	(directory directoryExists: 'Maildir')
 		ifFalse: [directory createDirectory: 'Maildir'].
	rootDirectory := (directory directoryNamed: 'Maildir') directoryNamed: anEndpoint rootDirectoryName.
  	rootDirectory 
		withAllFilesDo: [:file | | currentFolder | 
			currentFolder := directoryToFolderDictionary at: file directory pathName.
			currentFolder addMails: {(self readMailFromStream: file) folder: currentFolder; yourself}]
		andDirectoriesDo: 
			(self directoryVisitorWith: anEndpoint rootFolder and: rootDirectory and: anEndpoint)