initialization
initialize

	| default_directory maildir_directory loginCollection|
	super initialize.
	self ssl: false.
	self credentials: false.
	
	default_directory := FileDirectory default.	
	(default_directory directoryExists: 'Maildir')
		ifTrue: [
			maildir_directory := default_directory directoryNamed: 'Maildir'.	
			(maildir_directory fileOrDirectoryExists: 'config.txt')
			ifTrue: [
				loginCollection := OrderedCollection new.
				FileStream readOnlyFileNamed: (maildir_directory fullPathFor: ('config.txt')) do:
				[ :stream | 
					[stream atEnd] whileFalse: [
					|line|
					line := stream nextLine.
					loginCollection add: line				
					]
			      ].
			(loginCollection size = 4)
			ifTrue: [
			self serverAddress: (loginCollection at: 1).
			self serverPort: (loginCollection at: 2).
			self username: (loginCollection at: 3).
			self password: (loginCollection at: 4).
			]
			
			
			
			]
			
		]
  