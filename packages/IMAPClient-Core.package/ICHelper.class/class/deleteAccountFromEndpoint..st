as yet unclassified
deleteAccountFromEndpoint: aEndpoint

	"Takes an currently active endpoint and deletes the account."

	|directory configDirectory fileName mailDirectory|
	
	fileName := self getHashNameForAccount: (aEndpoint serverInfo host)  and: (aEndpoint authenticationInfo username).
	
	directory := FileDirectory default.	
		 (directory directoryExists: 'Maildir')
 			ifFalse: [^ self].
  		directory := directory directoryNamed: 'Maildir'.	
		
		"delete config file"
		(directory directoryExists: 'config')
			ifFalse: [^ self].
		configDirectory := directory directoryNamed: 'config'.		
			(configDirectory fileOrDirectoryExists: fileName)
				ifTrue: [configDirectory deleteFileNamed: fileName].
				
		"delete mail folder"
		(directory directoryExists: fileName)
			ifFalse: [^ self].
			
			mailDirectory := directory directoryNamed: fileName.
			mailDirectory recursiveDelete
			
		