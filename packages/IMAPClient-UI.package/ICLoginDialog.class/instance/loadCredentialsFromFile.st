login
loadCredentialsFromFile
	
	|default_directory maildir_directory loginCollection|

	default_directory := FileDirectory default.	
	loginCollection := OrderedCollection new.
	
	(default_directory directoryExists: 'Maildir')
		ifTrue: [
			maildir_directory := default_directory directoryNamed: 'Maildir'.	
			(maildir_directory fileOrDirectoryExists: 'config.txt')
			ifTrue: [
			
				FileStream readOnlyFileNamed: (maildir_directory fullPathFor: ('config.txt')) do:
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

			