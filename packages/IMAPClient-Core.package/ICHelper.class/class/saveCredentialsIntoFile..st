as yet unclassified
saveCredentialsIntoFile: aDataDictionary

	"Takes a dictionary and saves data in a config file.
	aDataDictionary should have keys: [name, address, port, username, password, ssl]"

	|default_directory maildir_directory config_directory fileName |
	
	fileName := self getHashNameForAccount: (aDataDictionary at: 'address') and: (aDataDictionary at: 'username') .
	
	default_directory := FileDirectory default.	
		 (default_directory directoryExists: 'Maildir')
 			ifFalse: [default_directory createDirectory: 'Maildir'].
  		maildir_directory := default_directory directoryNamed: 'Maildir'.	
		
		(maildir_directory directoryExists: 'config')
			ifFalse: [maildir_directory createDirectory: 'config'].
		config_directory := maildir_directory directoryNamed: 'config'.		
				
			(config_directory fileOrDirectoryExists: fileName)
			ifTrue: [config_directory deleteFileNamed: fileName].
		FileStream forceNewFileNamed: (config_directory fullPathFor: fileName) do:
		[ :stream | stream 
			wantsLineEndConversion: false;
			nextPutAll: (aDataDictionary at: 'name') ; cr;
			nextPutAll: (aDataDictionary at: 'address'); cr;
			nextPutAll: (aDataDictionary at: 'port');  cr;
			nextPutAll: (aDataDictionary at: 'username'); cr;
			nextPutAll: (aDataDictionary at: 'password'); cr;
			nextPutAll: (aDataDictionary at: 'ssl'); cr;
			close 
		]	