helper
deleteConfigFile
		
		
	| default_directory maildir_directory |
	
	default_directory := FileDirectory default.	
		 (default_directory directoryExists: 'Maildir')
 			 ifTrue:[ maildir_directory := default_directory directoryNamed: 'Maildir'.	
					(maildir_directory fileOrDirectoryExists: ICMockLoginDialog getConfigNameFile)
					ifTrue: [maildir_directory deleteFileNamed: ICMockLoginDialog getConfigNameFile.].	
			]
			
  		