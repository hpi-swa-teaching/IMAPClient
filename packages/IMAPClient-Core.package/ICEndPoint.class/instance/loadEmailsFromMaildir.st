login
loadEmailsFromMaildir 
	| directory_name maildir_directory default_directory |
 	default_directory := FileDirectory default.
 	(default_directory directoryExists: 'Maildir')
 		ifFalse: [default_directory createDirectory: 'Maildir'].
  	maildir_directory := default_directory directoryNamed: 'Maildir'.
  	directory_name := self getRootFolderName.
  	(maildir_directory directoryExists: directory_name)
    		ifFalse: [ Transcript show: 'Maildir doesnt exist'. ^ (OrderedCollection new) ].
  	^ self createEmailsWith: maildir_directory andName: directory_name.