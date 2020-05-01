storage
loadEmailsFromMaildir 

	| directory directoryName |
	
 	directory := FileDirectory default.
 	(directory directoryExists: 'Maildir')
 		ifFalse: [directory createDirectory: 'Maildir'].
		
  	directory := directory directoryNamed: 'Maildir'.
  	directoryName := self rootFolderName.
	
  	(directory directoryExists: directoryName)
    		ifFalse: [^ (OrderedCollection new)].
		
  	^ self createEmailsWith: directory andName: directoryName and: (self rootFolder)