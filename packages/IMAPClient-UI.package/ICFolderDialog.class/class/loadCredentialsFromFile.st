instance creation
loadCredentialsFromFile
	
	|default_directory maildir_directory config_directory endpointCollection configs|

	default_directory := FileDirectory default.	
	endpointCollection := OrderedCollection new.
	
	(default_directory directoryExists: 'Maildir')
	ifTrue: [
		maildir_directory := default_directory directoryNamed: 'Maildir'.	
		
		(maildir_directory directoryExists: 'config')
		ifTrue: [
			config_directory := maildir_directory directoryNamed: 'config'.
			configs := config_directory fileNames.	
			
			configs do: [ :config | |loginData endpoint|
				
				loginData := OrderedCollection new.
				
				"parse config file"
				FileStream readOnlyFileNamed: (config_directory fullPathFor: config) do:
				[ :stream | 
					[stream atEnd] whileFalse: [
					|line|
					line := stream nextLine.
					loginData add: line				
					]
			      ].	
		
				"create endpoint with data"
				endpoint := ICEndPoint new.
	
				[ endpoint 
				ssl:  (self parseStringToBool: (loginData at:6));
				name: (loginData at: 1);
				connectTo: (loginData at:2) on: ((loginData at:3) asNumber);
				login: (loginData at: 4) using: (loginData at: 5)
				]
				on: Error
				do: [ :sig | self inform: sig asString ].
				
				endpointCollection add: endpoint.
			
			]
		]
	].	
	
	^ endpointCollection



			