login
loadEmailsFromMaildir 
	| directory directory_name|
	
 	directory := FileDirectory default.
 	(directory directoryExists: 'Maildir')
 		ifFalse: [directory createDirectory: 'Maildir'].
  	directory := directory directoryNamed: 'Maildir'.
  	directory_name := self getRootFolderName.
  	(directory directoryExists: directory_name)
    		ifFalse: [ Transcript show: 'Maildir doesnt exist'. ^ (OrderedCollection new) ].
  	^ self createEmailsWith: directory andName: directory_name