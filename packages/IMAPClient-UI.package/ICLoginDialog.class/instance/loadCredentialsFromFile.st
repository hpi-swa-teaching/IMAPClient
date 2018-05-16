login
loadCredentialsFromFile
	
	|default_directory maildir_directory loginCollection|

	default_directory := FileDirectory default.	
	loginCollection := OrderedCollection new.
	
	(default_directory directoryExists: 'Maildir')
		ifTrue: [
			maildir_directory := default_directory directoryNamed: 'Maildir'.	
			(maildir_directory fileOrDirectoryExists: self class getConfigNameFile)
			ifTrue: [
			
				FileStream readOnlyFileNamed: (maildir_directory fullPathFor: self class getConfigNameFile) do:
				[ :stream | 
					[stream atEnd] whileFalse: [
					|line|
					line := stream nextLine.
					loginCollection add: line				
					]
			      ]
			]
		].
	
	^ loginCollection

			