login
saveCredentialsIntoFile 

	|default_directory maildir_directory|
	
	
	default_directory := FileDirectory default.	
		 (default_directory directoryExists: 'Maildir')
 			ifFalse: [default_directory createDirectory: 'Maildir'].
  		maildir_directory := default_directory directoryNamed: 'Maildir'.	
			(maildir_directory fileOrDirectoryExists: 'config.txt')
			ifTrue: [maildir_directory deleteFileNamed: 'config.txt'].
		FileStream forceNewFileNamed: (maildir_directory fullPathFor: ('config.txt')) do:
		[ :stream | stream 
			wantsLineEndConversion: false;
			nextPutAll: self serverAddress asString; cr;
			nextPutAll: self serverPort asString; cr;
			nextPutAll: self username asString;  cr;
			nextPutAll: self password asString; cr;
			nextPutAll: self ssl asString;
			close 
		]	