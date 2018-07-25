login
loadEmailsFromMaildir 

	| directory directoryName |
	
 	directory := FileDirectory default.
 	(directory directoryExists: 'Maildir')
 		ifFalse: [directory createDirectory: 'Maildir'].
		
  	directory := directory directoryNamed: 'Maildir'.
  	directoryName := self getRootFolderName.
	
  	(directory directoryExists: directoryName)
    		ifFalse: [
				Transcript show: 'Maildir doesnt exist'. 
				^ (OrderedCollection new)].
		
  	^ self createEmailsWith: directory andName: directoryName and: (self rootFolder)