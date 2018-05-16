helper
createConfigFile
		
		
	| default_directory maildir_directory |
	
	default_directory := FileDirectory default.	
		 (default_directory directoryExists: 'Maildir')
 			ifFalse: [default_directory createDirectory: 'Maildir'].
  		maildir_directory := default_directory directoryNamed: 'Maildir'.	
			(maildir_directory fileOrDirectoryExists: ICMockLoginDialog getConfigNameFile)
			ifTrue: [maildir_directory deleteFileNamed: ICMockLoginDialog getConfigNameFile].
		FileStream forceNewFileNamed: (maildir_directory fullPathFor: (ICMockLoginDialog getConfigNameFile)) do:
		[ :stream | stream 
			wantsLineEndConversion: false;
			nextPutAll: self class testServerName ; cr;
			nextPutAll: self class testServerPort ; cr;
			nextPutAll: self class testUsername ; cr;
			nextPutAll: self class testPassword; cr;
			nextPutAll: self class testSSLasString;
			close 
		].
	
     ^ maildir_directory