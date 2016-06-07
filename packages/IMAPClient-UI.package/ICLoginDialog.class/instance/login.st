as yet unclassified
login

	| endpoint |
	Transcript show: '----------------------'; crlf.
	Transcript show: 'Connecting to ', self serverAddress, ' on ', self serverPort, ' with username ', self username, ' and password ', self password, '...'; crlf.
	
	endpoint := ICEndpoint new.
	[ endpoint connectTo: self serverAddress asString on: self serverPort asNumber andLogin: self username using: self password. ]
		on: Error
		do: [ :sig | Transcript show: sig; crlf ].
	(endpoint isLoggedIn)
		ifTrue: [ Transcript show: 'Successfully connected!'; crlf ] 
		ifFalse: [ Transcript show: 'Connection failed.';crlf ].
		
	endpoint inspect.
	Transcript show: '----------------------'; crlf.