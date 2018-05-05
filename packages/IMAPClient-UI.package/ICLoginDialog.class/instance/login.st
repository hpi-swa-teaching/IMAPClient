login
login

	| endpoint maildir_directory default_directory|
	
	
	endpoint := ICEndPoint new.
	self credentials 
		ifTrue: [
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
			nextPutAll: self password asString;  cr;
			close 
		]	
		
		].
	
	[ endpoint 
		ssl: self ssl;
		connectTo: self serverAddress asString on: self serverPort asNumber;
		login: self username using: self password ]
		on: Error
		do: [ :sig | self inform: sig asString ].
	ICFolderDialog openWith: (endpoint rootFolder).
	(endpoint isLoggedIn)
		ifTrue: [ 
			Transcript show: (self class successLoginMessage); cr.
			ICFolder parseFromServer: endpoint ] 
		ifFalse: [ self inform: self class failureLoginMessage ].